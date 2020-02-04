import 'package:FlutterTelegram/models/chat.dart';
import 'package:FlutterTelegram/screens/chatScreen.dart';
import 'package:FlutterTelegram/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  int i = 0;
  List<Chat> _chats = [
    Chat(1,"Grumpy Cat",["Hey!","Get that hekkin cat over here!"],false),
  Chat(2,"Noisy Cat",["Heyy","Grump wants me, don't tell him anything !"],false)
  ];
  @override
  Widget build(BuildContext context) {
    var _defaultAppBar = AppBar(title: Text("Telegram"));
    var _selectAppBar = AppBar(
      title: Text("${_chats.where((c)=>c.isSelected).length} Selected"),
      leading: IconButton(  
        icon: Icon(Icons.close),
        onPressed: () {
          setState(() {
            _chats.where((c)=>c.isSelected).forEach((c)=>c.isSelected=false);
          });
        },
      ),
      actions: <Widget>[
        IconButton(icon:Icon(Icons.fiber_pin),onPressed: (){},),
        IconButton(icon:Icon(Icons.volume_mute),onPressed: (){},),
        IconButton(icon:Icon(Icons.delete),onPressed: (){},),
        IconButton(icon:Icon(Icons.more_vert),onPressed: (){},),
        ],
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      appBar: _chats.any((c)=>c.isSelected) ? _selectAppBar : _defaultAppBar,
      drawer: buildDrawer(),
      body: ListView.separated(
        itemCount: _chats.length,
        itemBuilder: (context, index) {
          return Container(
            key: Key(_chats[index].id.toString()),
            color: _chats[index].isSelected ? Colors.grey:Colors.white,
            child: ListTile(
                selected: _chats[index].isSelected,
                onTap: () {
                  setState(() {
                    if(_chats.any((c)=>c.isSelected)){
                    if(_chats[index].isSelected==false)
                    _chats[index].isSelected=true;
                    else
                    _chats[index].isSelected=false;
                  }
                  });
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(chat: _chats[index])));
                },
                onLongPress: () {
                  setState(() {
                    if (_chats[index].isSelected) {
                      _chats[index].isSelected = false;
                    } else {
                      _chats[index].isSelected = true;
                    }
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/grumpycat.jpg"),
                  radius: 28,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Text(
                  "${_chats[index].from}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${_chats[index].messages.last}",maxLines: 1,),
                trailing: Container(
                  margin: EdgeInsets.only(bottom: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.done_all,
                        color: Colors.blue,
                        size: 20,
                      ),
                      Text(DateTime.now().hour.toString() +
                          ":" +
                          DateTime.now().minute.toString()),
                    ],
                  ),
                )
                ),
          );
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.grey, height: 0),
      ),
    );
  }
}
