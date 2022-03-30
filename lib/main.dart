import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:latihan_flutter/home.dart';
import 'package:latihan_flutter/login.dart';
import 'package:latihan_flutter/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white10,
        ),
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          // route /
          if (settings.name == '/') {
            return MaterialPageRoute(
              builder: (context) => Onboarding(),
              settings: settings,
            );
          }
          if (settings.name == '/Login') {
            return MaterialPageRoute(
              builder: (context) => Login(),
              settings: settings,
            );
          }
          if (settings.name == '/Home') {
            return MaterialPageRoute(
              builder: (context) => Home(),
              settings: settings,
            );
          }
        });
  }
}
