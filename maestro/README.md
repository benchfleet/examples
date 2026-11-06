# Maestro flows

BenchFleet runs the [Maestro](https://maestro.dev) flows you already have, unchanged, on the Android phones attached
to your computer: each phone runs the whole folder, with results per phone and per flow, screen videos of phones
that failed, and retries that mark flaky flows. Guide:
[Test suites: Maestro, Espresso and Appium](https://benchfleet.com/docs/test-suites#maestro-flows). Test suites are
part of the Pro and Team plans ([pricing](https://benchfleet.com/pricing)).

| File | What it is |
|---|---|
| [`flows/config.yaml`](flows/config.yaml) | The workspace configuration (which flows run), read as Maestro reads it |
| [`flows/settings-open.yaml`](flows/settings-open.yaml) | Opens Android Settings, checks its list, takes a screenshot. Read-only, runs on any phone: a first check that your setup works |
| [`flows/your-app-launch.yaml`](flows/your-app-launch.yaml) | Your own app: a clean start, a sign-in with a test account, the home screen. Replace `com.example.app` and the texts |

## Run them

You need **Java 17 or later** and **Maestro** on the computer that runs BenchFleet.

- **In the app:** **Automation → Test suites** → **Maestro flows** → **Choose folder…** and pick `flows/`, pick the
  phones, and **Run**. For `your-app-launch`, add the variable `TEST_EMAIL=…` and the secret
  `TEST_PASSWORD=<a secret from Settings → Secrets>`; Maestro gets the secret as `MAESTRO_TEST_PASSWORD` and its
  value is never shown.
- **From CI:** [Test suites from CI](https://benchfleet.com/docs/test-suites#from-ci)
  ([from CI](https://benchfleet.com/docs/test-suites#from-ci)).

Moving from Firebase Test Lab? See [the migration guide](https://benchfleet.com/firebase-test-lab-migration).
