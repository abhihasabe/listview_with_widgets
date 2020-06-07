import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/utils/navigation_screen.dart';

import 'button_icon_widget.dart';
import 'inputfield_widget.dart';
import 'package:quicsolv_assignment/components/dialog_widget.dart';

typedef Null ItemSelectedCallback(int value);

class ListWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;

  ListWidget(
    this.count,
    this.onItemSelected,
  );

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  Navigations navigations = Navigations();
  Dialogs dialogs = Dialogs();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.count,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(width: 1, color: Color(0xff3670f4))),
              child: InkWell(
                onTap: () {
                  widget.onItemSelected(position);
                },
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                              hintText: "Frist Name",
                              enableValue: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                              hintText: "Last Name",
                              enableValue: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                              hintText: "Email",
                              enableValue: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                              hintText: "Phone Number",
                              enableValue: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                              hintText: "Username",
                              enableValue: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                                hintText: "Role",
                                enableValue: false,
                                onChanged: (value) {},
                                suffixIcon: Icons.expand_more),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                              hintText: "Status",
                              enableValue: false,
                              onChanged: (value) {},
                              suffixIcon: Icons.expand_more,
                            ),
                          ),
                        ),
                        new Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: InputFieldWidget(
                                hintText: "Date Created",
                                enableValue: false,
                                onChanged: (value) {},
                                suffixIcon: Icons.calendar_today),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                      child: Row(
                        children: <Widget>[
                          new Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: RoundedButtonWithIcon(
                                text: "EDIT",
                                press: () {
                                  navigations
                                      .navigateToSystemUserFormScreen(context);
                                },
                                prefixIcon: Icons.edit,
                                color: Color(0xff3670f4),
                                textColor: Colors.white70,
                              ),
                            ),
                          ),
                          new Flexible(
                            child: RoundedButtonWithIcon(
                              text: "DELETE",
                              press: () {
                                dialogs.showDialogs(context,
                                    "Delete","Are you Sure You Want to delete !");
                              },
                              prefixIcon: Icons.delete,
                              color: Color(0xffff7878),
                              textColor: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            decoration: new BoxDecoration(
              boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
