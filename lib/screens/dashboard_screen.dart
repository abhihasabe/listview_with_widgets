import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/components/bottomnavigation_component.dart';
import 'package:quicsolv_assignment/utils/drawer_screen.dart';
import 'package:quicsolv_assignment/utils/navigation_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DashboardScreen();
  }
}

class _DashboardScreen extends State {
  Widget appBarTitle = new Text("Dashboard");
  Icon actionIcon = new Icon(Icons.search);
  Navigations navigations = Navigations();
  final TextEditingController _filter = new TextEditingController();
  final dio = new Dio();
  String _searchText = "";
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  List names = new List();
  List filteredNames = new List();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Dashboard');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: _drawerKey,
      appBar: _buildBar(context),
      endDrawer: DrawerScreen(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff3670f4),
          child: Icon(
            Icons.person_add,
            color: Colors.white70,
          ),
          onPressed: () {}),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: _appBarTitle,
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: _searchPressed,
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            )),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                _drawerKey.currentState.openEndDrawer();
              },
              child: Icon(Icons.reorder),
            )),
      ],
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('System User');
        filteredNames = names;
        _filter.clear();
      }
    });
  }
}
