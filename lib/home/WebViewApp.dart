import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  @override
  _WebViewApp createState() => _WebViewApp();
}

class _WebViewApp extends State<WebViewApp> {
  String yourPdfPath = 'https://expoforest.com.br/wp-content/uploads/2017/05/exemplo.pdf';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้อมูลแอพพลิเคชั่น"),
      ),
      body: WebView(
        initialUrl: ('https://docs.google.com/gview?embedded=true&url=${yourPdfPath}'),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
