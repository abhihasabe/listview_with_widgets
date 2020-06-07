import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/components/button_icon_widget.dart';
import 'package:quicsolv_assignment/components/button_widget.dart';
import 'package:quicsolv_assignment/components/date_picker_widget.dart';
import 'package:quicsolv_assignment/components/inputfield_widget.dart';
import 'package:quicsolv_assignment/components/dropdown_widget.dart';
import 'package:quicsolv_assignment/interactor/DataInteractor.dart';

class SystemUserForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SystemUserForm();
  }
}

class _SystemUserForm extends State implements DataInteractor {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("System User Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                      child: InputFieldWidget(
                        hintText: "Frist Name",
                        enableValue: true,
                        action: "next",
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                      child: InputFieldWidget(
                        hintText: "Last Name",
                        enableValue: true,
                        action: "next",
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                child: InputFieldWidget(
                  hintText: "Email",
                  enableValue: true,
                  action: "next",
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                child: InputFieldWidget(
                  hintText: "Phone Number",
                  enableValue: true,
                  action: "next",
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                child: InputFieldWidget(
                  hintText: "Username",
                  enableValue: true,
                  action: "next",
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: DropDownWidget(
                  attribute: 'Role',
                  labelText: 'Role',
                  itemsList: ['Admin', 'Super Admin'],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: DropDownWidget(
                  attribute: 'Status',
                  labelText: 'Status',
                  itemsList: ['Active', 'Passive'],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: DatePicker(
                    lable: "Date Created",
                    keyValue: "",
                    firstDate: DateTime(1990),
                    initaldate: DateTime.now(),
                    dynamicInteractor: this,
                    latDate: DateTime(2120),
                    textColor: Colors.black,
                    textSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 12),
                child: RoundedButton(
                  text: "Submut",
                  press: () {},
                  color: Color(0xff3670f4),
                  textColor: Colors.white70,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void response(String key, String question, answer, {String mapKey}) {
    // TODO: implement response
  }
}
