import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<DateTime> showCupertinoDatePicker(BuildContext context) async {
  DateTime _selectedDate;
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
      width: MediaQuery.of(context).size.width*0.98,
      height: 175,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ButtonTheme(
            height: 60,
                      child: FlatButton(onPressed: (){
              Navigator.pop(context,_selectedDate);
            },
            child: Text("Ok"),
            textColor: Colors.blue,
            splashColor: Colors.grey[100],),
          ),
          Expanded(
                      child: CupertinoDatePicker(
                        minimumYear: DateTime.now().year,
                        maximumYear: DateTime.now().add(Duration(days: 3650)).year,
                        minimumDate: DateTime.now(),
              onDateTimeChanged: (value) => _selectedDate=value,
              mode: CupertinoDatePickerMode.date,
              ),
          ),
        ],
      ),
    )
  );
}
