import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/utils/drawer_screen.dart';
import 'package:quicsolv_assignment/utils/navigation_screen.dart';

class GeneralPublicScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GeneralPublicScreen();
  }
}

class _GeneralPublicScreen extends State {
  Widget appBarTitle = new Text("Genral Public");
  Icon actionIcon = new Icon(Icons.search);
  Navigations navigations = Navigations();
  final TextEditingController _filter = new TextEditingController();
  final dio = new Dio();
  List names = new List();
  List filteredNames = new List();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Genral Public');
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();


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
              Text("Genral Public", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff3670f4),
          child: Icon(Icons.person_add,color: Colors.white70,), onPressed: () {}),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: _appBarTitle,
      leading: new IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: _backPressed,
      ),
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

  void _backPressed() {
    navigations.navigateToDashboardScreen(context);
  }
}
