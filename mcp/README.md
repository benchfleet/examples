# AI clients (MCP)

Let Claude Code, Codex, Claude Desktop, Cursor or any other [MCP](https://modelcontextprotocol.io) client use your
Android phones through BenchFleet: they can list your phones, look at their screens, read the elements on them, tap,
type, open apps and run your published workflows, only on the phones and with the access you choose, with approvals
for anything sensitive and every call in BenchFleet's audit log. Guide:
[Connect an AI client (MCP)](https://benchfleet.com/docs/mcp). What the tools and safety layer are:
[Android MCP server](https://benchfleet.com/android-mcp-server).

| File | For |
|---|---|
| [`claude-code.sh`](claude-code.sh) | Claude Code: one command, run once |
| [`codex-config.toml`](codex-config.toml) | Codex: add to `~/.codex/config.toml` |
| [`mcp.json`](mcp.json) | Claude Desktop, Cursor and other clients that read an `mcpServers` block |

## Set up

1. Install BenchFleet from [benchfleet.com/download](https://benchfleet.com/download) and connect your phones (or
   use its demo phones).
2. In BenchFleet: **Settings → AI clients → Connect an AI client…**. Name it, choose **where** it may work (every
   phone, a group or one phone) and its access (*Look only*, *Look and operate*, or chosen capabilities).
3. Copy the token it shows once into the file for your client in place of `<token>`. Keep the edited file out of
   version control. BenchFleet's own setup lines keep the token in a file of its own instead.
4. Start the client and ask it to list the phones: it sees only the phones and tools you allowed.

All three use [`benchfleet-mcp`](https://github.com/benchfleet/benchfleet-mcp), the open-source connector (MIT),
started with `npx`; it needs Node and the BenchFleet app running on the same computer. **Disconnect** in BenchFleet
stops the token at once.

AI clients are part of the Pro and Team plans ([pricing](https://benchfleet.com/pricing)); the client's AI usage is
paid to its own provider. Phones in Manual mode, paused phones and phones someone is controlling are never operated,
and at a CAPTCHA or other human-only check the agent stops and asks a person. For other MCP servers, the free
[MCP config generator](https://benchfleet.com/tools/mcp-config-generator) writes the same formats.
