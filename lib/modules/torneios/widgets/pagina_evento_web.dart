import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaginaEventoWebView extends StatelessWidget {
  final String url;
  PaginaEventoWebView(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: this.url,
        ),
      ),
    );
  }
}
