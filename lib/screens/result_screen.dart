import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ResultsScreen extends StatefulWidget {
  static String id = 'results_screen';

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  String resultUrl = 'https://tarvajeh.ir/en/result?pack_id=730&hash=424af8034638b26db42fa46cdd6f3b5c149283d5aa02433faaa3cf54';
  bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kResultTitle(false)),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: resultUrl,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(),)
              : Stack(),
        ],
      ),
    );
  }
}