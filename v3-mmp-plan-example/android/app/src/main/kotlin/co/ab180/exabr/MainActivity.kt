package co.ab180.exabr

import android.content.Intent
import co.ab180.airbridge.flutter.AirbridgeFlutter
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onResume() {
        super.onResume()
        AirbridgeFlutter.processDeeplink(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
    }
}
