import 'package:flutter/material.dart';

class AppHelper {
 static navigateToScreen(BuildContext context, Widget screenName) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => screenName));
  }
}
