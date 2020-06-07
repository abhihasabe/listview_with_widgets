import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/screens/dashboard_screen.dart';
import 'package:quicsolv_assignment/screens/generalpublic_screen.dart';
import 'package:quicsolv_assignment/screens/healthcareprofessionals_screen.dart';
import 'package:quicsolv_assignment/screens/systemuser_screen.dart';

class BottomNavigationComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Dashboard();
  }
}

class _Dashboard extends State {
  int i = 0;

  int _selectedTabIndex = 0;
  int selectFrist = 0;

  String jobCallNumber;
  List _pages = [
    DashboardScreen(),
    GeneralPublicScreen(),
    HealthCareProfessionalScreen(),
    SystemUserScreen()
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xff3670f4),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.blur_circular),
            title: Center(child: Center(child: Align(alignment: Alignment.center,child: Text("DASHBOARD")))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            title: Center(child: Center(child: Align(alignment: Alignment.center,child: Text("GENRAL")))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.enhanced_encryption),
            title:
                Center(child: Center(child: Align(alignment: Alignment.center,child: Text("HEALTHCARE")))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Center(child: Center(child: Align(alignment: Alignment.center,child: Text("SYSTEM")))),
          ),
        ],
      ),
      body: Center(child: _pages[_selectedTabIndex]),
    );
  }
}
