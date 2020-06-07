import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs {
  Future<bool> showDialogs(BuildContext context, title, subTitle) {
    return showDialog(
          context: context,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            title: Text(
              '$title',
              style: TextStyle(fontSize: 18),
            ),
            content: Text('$subTitle',style: TextStyle(fontSize: 14)),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }
}
