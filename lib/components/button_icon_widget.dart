import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/utils/constants.dart';
import 'package:quicsolv_assignment/utils/navigation_screen.dart';
import 'dialog_widget.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData prefixIcon;

  const RoundedButtonWithIcon({
    Key key,
    this.text,
    this.press,
    this.prefixIcon,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Navigations navigations = Navigations();
    Dialogs dialogs = Dialogs();
    return Container(
      child: RaisedButton.icon(
        onPressed: () {
          text == "EDIT"
              ? navigations.navigateToSystemUserFormScreen(context)
              : dialogs.showDialogs(
                  context, "Delete", "Are you Sure You Want to delete !");
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        label: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        icon: Icon(
          prefixIcon,
          color: textColor,
        ),
        textColor: textColor,
        color: color,
      ),
    );
  }
}
