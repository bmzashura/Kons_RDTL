import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }
  static void goToIda(BuildContext context) {
    Navigator.pushNamed(context, "/parte_ida");
  }
}



