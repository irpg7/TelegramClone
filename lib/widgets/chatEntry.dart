import 'package:flutter/material.dart';

ListTile buildChatEntry(bool isSelected) {
  return ListTile(
      onTap: () {},
      onLongPress: () {
        if (isSelected)
          isSelected = false;
        else
          isSelected = true;
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage("lib/assets/grumpycat.jpg"),
        radius: 28,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      title: Text(
        "Grumpy Cat",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text("Get that hekkin cat over here!"),
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
      ));
}
