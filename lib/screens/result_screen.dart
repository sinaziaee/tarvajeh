import 'dart:async';

import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
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
  bool isPersian;
  Map args;
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    isPersian = args['isPersian'];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [kGrey, kMediumGreen, ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            kResultTitle(false),
            style: isPersian?PersianFonts.Shabnam.copyWith(
              fontSize: 20, color: Colors.white,
            ): TextStyle(fontSize: 20, color: Colors.white),
          ),
          automaticallyImplyLeading: !isPersian,
          actions: [
            if(isPersian)...[
              IconButton(icon: Icon(Icons.chevron_right, color: Colors.white,), onPressed: (){
                Navigator.pop(context);
              }),
            ]
          ],
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
      ),
    );
  }
}