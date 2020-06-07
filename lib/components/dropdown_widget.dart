import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DropDownWidget extends StatelessWidget {
  final String attribute, labelText;
  final List<String> itemsList;
  String dropdownValue = '';

  DropDownWidget({
    Key key,
    this.attribute,
    this.labelText,
    this.itemsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FormBuilder(
      autovalidate: true,
      initialValue: {
        'country': 5,
      },
      child: FormBuilderCustomField(
        attribute: attribute,
        validators: [
          FormBuilderValidators.required(),
        ],
        formField: FormField(
          // key: _fieldKey,
          enabled: true,
          builder: (FormFieldState<dynamic> field) {
            return InputDecorator(
              decoration: InputDecoration(
                labelText: labelText,
                hintText: labelText,
                contentPadding: EdgeInsets.only(top: 10.0, bottom: 0.0),
                border: InputBorder.none,
                errorText: field.errorText,
              ),
              child: DropdownButtonFormField(
                isExpanded: true,
                items: itemsList.map((option) {
                  return DropdownMenuItem(
                    child: Text("$option"),
                    value: option,
                  );
                }).toList(),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                value: field.value,
                onChanged: (value) {
                  field.didChange(value);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
