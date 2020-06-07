import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/components/listview_widget.dart';
import 'package:quicsolv_assignment/utils/drawer_screen.dart';
import 'package:quicsolv_assignment/utils/navigation_screen.dart';

class SystemUserScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SystemUserScreen();
  }
}

class _SystemUserScreen extends State {
  Navigations navigations = Navigations();
  final TextEditingController _filter = new TextEditingController();
  final dio = new Dio();
  List names = new List();
  List filteredNames = new List();
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Icon _searchIcon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  Widget _appBarTitle = new Text(
    'System User',
    style: TextStyle(
      color: Colors.white,
    ),
  );
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Navigations navigations = Navigations();
    return Scaffold(
      backgroundColor: Colors.white,
      key: _drawerKey, // assign key to Scaffold
      endDrawer: DrawerScreen(),
      appBar: _buildBar(context),
      body: Container(color:Colors.white70,child: ListWidget(10, (value) {})),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff3670f4),
          child: Icon(
            Icons.person_add,
            color: Colors.white,
          ),
          onPressed: () {
            navigations.navigateToSystemUserFormScreen(context);
          }),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: _appBarTitle,
      leading: new IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
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
                color: Colors.white,
              ),
            )),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                _drawerKey.currentState.openEndDrawer();
              },
              child: Icon(Icons.reorder, color: Colors.white),
            )),
      ],
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(
          Icons.close,
          color: Colors.white,
        );
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              hintText: 'Search...',
              fillColor: Colors.white),
        );
      } else {
        this._searchIcon = new Icon(
          Icons.search,
          color: Colors.white,
        );
        this._appBarTitle = new Text(
          'System User',
          style: TextStyle(color: Colors.white),
        );
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  void _backPressed() {
    navigations.navigateToDashboardScreen(context);
  }
}
