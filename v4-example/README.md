# Airbridge Flutter v4 Example

## How to run
### Step 1: Clone This Repository

1.  Open your terminal and navigate to the directory where you want to clone the eaxmple app.
2.  Execute the following command to clone the repository:
    ```bash
    git clone https://github.com/ab180/airbridge-flutter-example
    ```

### Step 2: Install Airbridge SDK
1. Add the following code to the dependencies block in the pubspec.yaml file.
    ```yaml
    dependencies:
    # Replace $HERE_LATEST_VERSION with latest version
    # - Versions: https://pub.dev/packages/airbridge_flutter_sdk/versions
    # - Example: airbridge_flutter_sdk: 0.0.0
    airbridge_flutter_sdk: $HERE_LATEST_VERSION
    ```
2. Open the Terminal at the location at the top-level file of the relevant project and run the command below. Note that the Airbridge Flutter SDK only works on Flutter 1.20.0 and later and on Dart 2.12.0 and later.
    ```bash
    flutter pub get
    ```

## Test guide

### Sending Events
How to send events**
Click `Send Event` button to send event

**Check on Real-time Logs**
<img src="./../screenshot/Screenshot_track_event_log.png"  width="1000">

Event information sent from the Airbridge SDK should be seen in the "Airbridge dashboard → `Raw Data` → `App Real-time Log`" tab.

### Deeplink settings
To set up a deep link, refer to the [Set up deep linking](https://help.airbridge.io/en/developers/flutter-sdk-v4#set-up-deep-linking) link
