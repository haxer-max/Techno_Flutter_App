import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class Igweb extends StatelessWidget {
  final Completer<WebViewController> _controller=
    Completer<WebViewController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "https://www.instagram.com/technothlon.iitg/",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController
        webViewController){
          _controller.complete(webViewController);
        },
      )

    );
  }
}
























