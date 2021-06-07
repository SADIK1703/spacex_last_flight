import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget webPage(
  Widget previousPageButton,
  Widget nextPageButton,
  String? url,
) {
  final gestureRecognizers = {
    Factory(() => EagerGestureRecognizer()),
  };
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        previousPageButton,
        Expanded(
          child: WebView(
            gestureRecognizers: gestureRecognizers,
            allowsInlineMediaPlayback: true,
            initialUrl: url,
          ),
        ),
        nextPageButton,
      ],
    ),
  );
}
