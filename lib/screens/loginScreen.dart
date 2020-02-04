import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Country Code"),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Phone Number"),
                    ))
              ],
            ),
            Container(
              margin:EdgeInsets.only(top:40),
              width: MediaQuery.of(context).size.width * 0.9,
              child: FlatButton(
                color: Colors.lightBlue[600],
                child: Text("Next",style: TextStyle(color: Colors.white),),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
