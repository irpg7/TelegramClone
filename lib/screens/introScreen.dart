import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("lib/assets/telegram.png"),
              width: 100,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 55),
              child: Text("Telegram",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
              ),
          ],
        ),
    );
  }
}
