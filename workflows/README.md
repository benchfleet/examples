# Workflows

BenchFleet workflows are readable YAML files: steps that find screen elements by their text, role or ID (never by
screen position), with checks after each tap, retries, loops, conditions and outputs. Build them in the app's visual
editor or recorder, or write them as files like these and import them. Guide:
[Workflows and schedules](https://benchfleet.com/docs/workflows). Workflows are part of the Pro and Team plans
([pricing](https://benchfleet.com/pricing)).

| File | What it does | Changes anything? |
|---|---|---|
| [`about-phone.yaml`](about-phone.yaml) | Opens Settings → About phone, reads the Android version shown and checks it against what the phone reports | No: read-only |
| [`control-flow.yaml`](control-flow.yaml) | Inputs, variables, a for-each loop, if/else, try/catch, `on_error: continue`, a guard for sign-in screens, outputs | No: reads the Settings list |
| [`health-check.yaml`](health-check.yaml) | Reads the Android version and battery state and records them on the phone's tile; good as a [schedule](https://benchfleet.com/schedule-jobs-android-phones) | Only a status field in BenchFleet |
| [`your-app-smoke.yaml`](your-app-smoke.yaml) | A smoke test for your own app with steady [device conditions](https://benchfleet.com/docs/test-suites#device-conditions) (language, animations off, screen on; put back afterwards), the one the CI examples run | Only your app and the conditions it puts back |

`about-phone`, `control-flow` and `health-check` run on any Android phone, including BenchFleet's demo phones.
`your-app-smoke` needs your own app: replace `com.example.app` and the element IDs.

## Use them

1. In BenchFleet, open **Automation → Workflows** → **Import…**, choose a file (or paste it) and **Open in the
   editor**. The editor checks it (its **YAML** tab shows the file) and lists the capabilities it needs; save it.
2. Start with a **dry run** to see what would happen without touching the phones, then run it on one phone, a
   group, or every phone that matches a filter.
3. Publish it to run it from a [schedule](https://benchfleet.com/schedule-jobs-android-phones), from
   [CI](https://benchfleet.com/docs/test-suites#from-ci) or from an [AI client](../mcp/).

Every file here passes BenchFleet's workflow check (`controlhub workflow validate`). A workflow only gets the
capabilities it declares under `required_capabilities`, and phones in Manual mode are never touched by automation.

More: [record and replay](https://benchfleet.com/record-replay-android-automation),
[YAML test automation on your own phones](https://benchfleet.com/local-android-test-automation-yaml),
[flaky tests and failures](https://benchfleet.com/docs/flaky-tests).
