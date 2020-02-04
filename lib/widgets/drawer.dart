import 'package:flutter/material.dart';

Drawer buildDrawer(){
  return Drawer(
            child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("lib/assets/profile.jpg"),
                      ),
                      IconButton(
                        icon: Transform.rotate(child: Icon(Icons.brightness_2,color: Colors.white,),angle: 44.5 ,),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90),
                  child: ExpansionTile(
                    title: Text(
                      "User Name",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Phone Number",
                      style: TextStyle(color: Colors.white),
                    ),
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                                onTap: () {},
                                leading: Stack(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/assets/profile.jpg"),
                                    ),
                                    Positioned(
                                      child: Container(
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 2.3)),
                                      ),
                                      left: 25,
                                      top: 22,
                                    )
                                  ],
                                  alignment: Alignment.bottomRight,
                                  overflow: Overflow.visible,
                                ),
                                title: Container(
                                  child: Text("User Name"),
                                  margin: EdgeInsets.only(left: 10),
                                )),
                            ListTile(
                              leading: Icon(Icons.add),
                              title: Text("Add Account"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text("New Group"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("New Secret Chat"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text("New Channel"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Contacts"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Calls"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text("Saved Messages"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Invite Friends"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Telegram FAQ"),
              onTap: () {},
            ),
          ],
        ));
}