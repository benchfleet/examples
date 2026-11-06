#!/bin/sh
# Connect Claude Code to your phones through BenchFleet. Run once; replace <token> with the token BenchFleet shows
# under Settings -> AI clients -> Connect an AI client... (shown once). Guide: https://benchfleet.com/docs/mcp
claude mcp add benchfleet --env BENCHFLEET_TOKEN=<token> -- npx -y benchfleet-mcp
