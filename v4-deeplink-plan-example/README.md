# Airbridge Flutter v4 Deeplink Plan Example

## Getting Started

### Prerequisites

#### Android

- Install Android Studio
- Install Android SDK and set up environment variables
- Android emulator or physical Android device

#### iOS (macOS only)

- Install Xcode
- iOS simulator or physical iOS device

### How to run
1. Install dependencies
    ```bash
    flutter pub get
    ```
2. Run the application
    ```bash
    flutter run
    ```

## Test guide

### Sending Events
How to send events**
Click `Send Event` button to send event

**Check on Real-time Logs**
<img src="./screenshot/Screenshot_track_event_log.png"  width="1000">

Event information sent from the Airbridge SDK should be seen in the "Airbridge dashboard → `Raw Data` → `App Real-time Log`" tab.

### Deeplink settings
To set up a deep link, refer to the [Set up deep linking](https://help.airbridge.io/en/developers/flutter-sdk-v4#set-up-deep-linking) link

### Deeplink test

You can test deep links using the following two methods:
1. Click on a custom scheme deep link starting with exabr://
2. Click on the Airbridge tracking link: https://abr.ge/4mw2j8

Confirm that the app launches and displays the deep link information.