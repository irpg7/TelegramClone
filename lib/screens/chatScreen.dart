import 'package:FlutterTelegram/models/chat.dart';
import 'package:FlutterTelegram/widgets/chatBubble.dart';
import 'package:flutter/material.dart';

Chat _chat;

class ChatScreen extends StatefulWidget {
  final Chat chat;
  ChatScreen({Key key, @required this.chat}) {
    _chat = chat;
  }

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
              Expanded(
                  child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/grumpycat.jpg"),
                  radius: 20,
                ),
                title: Text("${_chat.from}"),
                subtitle: Text("Last seen 14:00"),
              ))
            ])),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration:BoxDecoration(image: 
                DecorationImage(image: AssetImage("lib/assets/chatBg.jpg"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(Colors.lightGreen[100], BlendMode.color))),
                child: ListView.builder(
                  itemCount: _chat.messages.length,
                  itemBuilder: (context, index) {
                    return Row(children: [
                      buildChatBubble(_chat, _chat.messages[index])
                    ]);
                  },
                ),
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.tag_faces),
                  iconSize: 30,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Send a Message",
                          contentPadding: EdgeInsets.symmetric(horizontal: 0))),
                ),
                IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
                GestureDetector(
                  child: IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {},
                  ),
                  onLongPress: () {},
                )
              ],
            ),
          ],
        ));
  }
}
