# BenchFleet examples

Ready-to-copy examples for [BenchFleet](https://benchfleet.com), the control hub for Android phones: your own
phones on your desk and cloud phones billed by the minute. Workflows, Maestro flows, GitHub Actions CI on your own
phones or on cloud phones, and AI clients over MCP. Every file is a working example you can copy into your own
repository, and each folder links to its guide on [benchfleet.com/docs](https://benchfleet.com/docs/).

| Folder | What is in it | Guide |
|---|---|---|
| [`workflows/`](workflows/) | BenchFleet workflows in YAML: a read-only Settings check, every control-flow feature in one file, a scheduled health check, and a smoke test for your own app | [Workflows and schedules](https://benchfleet.com/docs/workflows) |
| [`maestro/`](maestro/) | A Maestro flow folder BenchFleet runs on each of your phones | [Test suites](https://benchfleet.com/docs/test-suites#maestro-flows) |
| [`github-actions/cloud-phone/`](github-actions/cloud-phone/) | GitHub Actions on GitHub's runners: your instrumentation tests on BenchFleet cloud phones with the [cloud phone Action](https://github.com/benchfleet/cloud-phone) | [Cloud phones from CI](https://benchfleet.com/docs/cloud-phones-ci) |
| [`mcp/`](mcp/) | Configuration for Claude Code, Codex, Claude Desktop, Cursor and other MCP clients | [Connect an AI client](https://benchfleet.com/docs/mcp) |

## Start here

1. [Download BenchFleet](https://benchfleet.com/download) and [connect your phones](https://benchfleet.com/docs/connecting-phones),
   or try it on its demo phones. It is free for a few of your own phones; workflows, test suites and AI clients are
   part of Pro and Team ([pricing](https://benchfleet.com/pricing)).
2. Import [`workflows/about-phone.yaml`](workflows/about-phone.yaml) and dry-run it: it changes nothing on the phone.
3. Pick the CI example that matches where your phones are: on your desk ([Test suites from CI](https://benchfleet.com/docs/test-suites#from-ci))
   or in the cloud ([`cloud-phone`](github-actions/cloud-phone/)).

## Rules these examples follow

- **Your own apps only.** The examples read Android's Settings or target `com.example.app`, a stand-in for your app.
  BenchFleet is for testing and running your own apps on phones you control.
- **No secrets in files.** Tokens go in your CI's secrets, passwords in BenchFleet's Settings → Secrets; every
  `<token>` here is a placeholder.
- **People stay in charge.** Phones in Manual mode are never touched by automation, and CAPTCHAs, sign-in checks and
  other human-only steps stop the run and ask a person
  ([privacy and security](https://benchfleet.com/docs/privacy-and-security)).

Questions or an example you would like to see: [support](https://benchfleet.com/support).

## Licence

MIT, for these examples only (see [LICENSE](LICENSE)): copy them freely. The BenchFleet service and app are
proprietary and used under the [BenchFleet terms](https://benchfleet.com/terms).
