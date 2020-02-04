import 'package:FlutterTelegram/screens/chatListScreen.dart';
import 'package:FlutterTelegram/screens/introScreen.dart';
import 'package:FlutterTelegram/screens/loginScreen.dart';
import 'package:flutter/material.dart';


  Map<String,WidgetBuilder> appRoutes(BuildContext context){
      return {
        "intro" : (context) => IntroScreen(),
        "login" : (context) => LoginScreen(),
        "chatList":(context) => ChatListScreen()
      };
  }
