import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/components/text_field_widget.dart';
import 'package:quicsolv_assignment/utils/constants.dart';

import 'date_picker_widget.dart';

class InputFieldWidget extends StatelessWidget {
  final String hintText;
  final String action;
  final bool enableValue;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final ValueChanged<String> onChanged;

  const InputFieldWidget({
    Key key,
    this.hintText,
    this.action,
    this.enableValue,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: TextField(
        enabled: enableValue,
        textInputAction:
            action == "next" ? TextInputAction.next : TextInputAction.done,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          icon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: kPrimaryColor,
                )
              : null,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    suffixIcon,
                    color: kPrimaryColor,
                  ),
                  onPressed: () {
                    //DatePicker();
                  },
                )
              : null,
          labelText: hintText,
          hintText: hintText,
        ),
      ),
    );
  }
}
