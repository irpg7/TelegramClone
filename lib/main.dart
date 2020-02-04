import 'package:FlutterTelegram/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppMain());

class AppMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        initialRoute: 'chatList',
        routes: appRoutes(context),
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.blue,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black),
            subtitle: TextStyle(color: Colors.black),
            body1: TextStyle(color: Colors.black)),
        )
    );
  }
}