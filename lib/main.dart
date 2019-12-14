import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BodyWidget(),
        backgroundColor: Colors.black,
      ),
    );
  //  return MaterialApp(
  //     routes: {
  //       "/": (_) => new WebviewScaffold(
  //         url: "https://www.google.com",
  //         // appBar: new AppBar(
  //         //   title: new Text("Widget webview"),
  //         // ),
  //       ),
  //     },
  //   );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
    return Container(
      decoration: new BoxDecoration(color: Colors.red),
      child: SafeArea(
        child: WebviewScaffold(
            url: "https://astrostockmarkets.com",
            withZoom: true,
          // key: UniqueKey(),
          // javascriptMode: JavascriptMode.unrestricted,
          // initialUrl: 'https://astrostockmarkets.com',
        )
      ),
    );
  }
}

// child: WebView(
//     key: UniqueKey(),
//     javascriptMode: JavascriptMode.unrestricted,
//     initialUrl: 'https://astrostockmarkets.com',
// )