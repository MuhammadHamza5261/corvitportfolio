import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class newwidigit extends StatelessWidget {
  const newwidigit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: newwidigitSTF(),
    );
  }
}

class newwidigitSTF extends StatefulWidget {
  const newwidigitSTF({Key? key}) : super(key: key);

  @override
  State<newwidigitSTF> createState() => _newwidigitSTFState();
}

class _newwidigitSTFState extends State<newwidigitSTF> {
  late double width;
  late double height;

  late WebViewXController webviewController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              child: WebViewX(
                width: double.infinity,
                height: 300,
                initialContent: 'https://www.google.com.pk/',
                initialSourceType: SourceType.url,
                onWebViewCreated: (controller) => webviewController = controller,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
            ),
          ),


        ],
      ),
    );
  }
}