# CI on cloud phones: the BenchFleet cloud phone Action

[`android-tests.yml`](android-tests.yml) builds your app and runs its instrumentation tests (Espresso, UI Automator)
on a fresh [BenchFleet cloud phone](https://benchfleet.com/docs/cloud-phones) for each Android version in its
matrix, from GitHub's own runners: no phones, emulator or Android SDK of your own. The Action installs your APKs,
runs `am instrument`, fetches the phone's log and **always stops the phone**; the job fails when a test fails.
Guide: [Cloud phones from CI](https://benchfleet.com/docs/cloud-phones-ci). The Action:
[benchfleet/cloud-phone](https://github.com/benchfleet/cloud-phone).

## Set up

1. A BenchFleet account with cloud phone minutes. Each phone is billed by the minute from your account's prepaid
   minutes, with a minimum per phone that started: see [pricing](https://benchfleet.com/pricing). The matrix
   starts one phone per Android version.
2. Your account → **API tokens** → Make token. Give it an expiry and, if you like, a monthly spending cap and the
   most phones it may run at once. It is shown once.
3. In your app's repository: Settings → Secrets and variables → Actions → New repository secret named
   `BENCHFLEET_TOKEN`, with the token.
4. Copy `android-tests.yml` to `.github/workflows/`, replace `com.example.app.test` with your test package and the
   APK paths with your build's, and pick the [Android versions](https://benchfleet.com/docs/cloud-phone-versions).

A token can only start, use and stop its own phones; it cannot buy minutes or change your account, and revoking it
stops it at once. The phones are Android from the Android Open Source Project, without Google Play.

To run Maestro flows, workflows or AI agents, use the BenchFleet app instead
([Test suites from CI](https://benchfleet.com/docs/test-suites#from-ci)).
