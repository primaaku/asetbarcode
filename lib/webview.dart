import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webviewpage extends StatefulWidget {
  // const webviewPage({Key? key}) : super(key: key);
  final String namaurl;
  Webviewpage(this.namaurl);

  @override
  State<Webviewpage> createState() => _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Webview')),
      body: WebView(

        initialUrl: "${widget.namaurl}",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
