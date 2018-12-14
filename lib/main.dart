import 'package:flutter/material.dart';
import 'package:konstitusaun/home_page.dart';
import 'package:konstitusaun/splash.dart';


var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => Home()
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.redAccent, accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));
