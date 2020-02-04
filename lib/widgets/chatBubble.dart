import 'package:FlutterTelegram/models/chat.dart';
import 'package:flutter/material.dart';

Container buildChatBubble(Chat chat, String message) {
  return Container(

    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          blurRadius: 20.0, 
          offset: Offset(10,10),
         color: Colors.black54)
      ],
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(15),
      topRight: Radius.circular(15),
      bottomRight:Radius.circular(15)),
      color: Colors.blue[400]
    ),
    constraints: BoxConstraints(maxWidth: 330),
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "${chat.from}",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        Text(
          "$message",
        )
      ],
    ),
  );
}
