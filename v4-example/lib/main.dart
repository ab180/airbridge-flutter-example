import 'package:flutter/material.dart';
import 'package:airbridge_flutter_sdk/airbridge_flutter_sdk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      init();
    });
  }

  Future<void> init() async {
    Airbridge.setOnDeeplinkReceived((deeplink) {
      print("[DeepLink] $deeplink");
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airbridge Flutter SDK Example',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Airbridge Flutter SDK Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _sendEvent() {
    Airbridge.trackEvent(
      category: AirbridgeCategory.ORDER_COMPLETED,
      semanticAttributes: {
        AirbridgeAttribute.VALUE: 11,
        AirbridgeAttribute.TRANSACTION_ID:
            '8065ef16-162b-4a82-b683-e51aefdda7d5',
        AirbridgeAttribute.CURRENCY: 'USD',
        AirbridgeAttribute.IN_APP_PURCHASED: true,
        AirbridgeAttribute.PRODUCTS: [
          {
            AirbridgeAttribute.PRODUCT_ID:
                '0117b32a-5a6c-4d4c-b64c-7858e07dba78',
            AirbridgeAttribute.PRODUCT_NAME: 'PlasticHammer',
            AirbridgeAttribute.PRODUCT_PRICE: 10,
            AirbridgeAttribute.PRODUCT_QUANTITY: 1,
            AirbridgeAttribute.PRODUCT_CURRENCY: 'USD',
          },
          {
            AirbridgeAttribute.PRODUCT_ID:
                'd6ab2fbe-decc-4362-b719-d257a131e91e',
            AirbridgeAttribute.PRODUCT_NAME: 'PlasticFork',
            AirbridgeAttribute.PRODUCT_PRICE: 1,
            AirbridgeAttribute.PRODUCT_QUANTITY: 1,
            AirbridgeAttribute.PRODUCT_CURRENCY: 'USD',
          },
        ],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _sendEvent(),
              child: Text("Send event"),
            ),
          ],
        ),
      ),
    );
  }
}
