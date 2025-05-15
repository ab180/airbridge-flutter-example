package co.ab180.exabr

import android.app.Application
import co.ab180.airbridge.flutter.AirbridgeFlutter

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        AirbridgeFlutter.initializeSDK(this, "exabr", "c3b61a44d8f74811b2f63857cfcd3a7f")
    }
}