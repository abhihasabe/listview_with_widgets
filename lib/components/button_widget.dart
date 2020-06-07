import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/utils/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData prefixIcon;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.prefixIcon,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Container(
      width: size-50,
      height: 55,
      child: RaisedButton(
        child: new Text('$text'),
        onPressed: () {
          print('Button Clicked.');
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        textColor: textColor,
        color: color,
      ),
    );
  }
}
