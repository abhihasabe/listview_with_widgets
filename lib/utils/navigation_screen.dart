import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/animation/FadeRoute.dart';
import 'package:quicsolv_assignment/components/bottomnavigation_component.dart';
import 'package:quicsolv_assignment/screens/systemuserform_screen.dart';

class Navigations {
  Future navigateToDashboardScreen(BuildContext context) async {
    Navigator.pushAndRemoveUntil(
        context,
        FadeRoute(page: BottomNavigationComponent()),
        (Route<dynamic> route) => false);
  }

  Future navigateToSystemUserFormScreen(BuildContext context) async {
    Navigator.pushAndRemoveUntil(context, FadeRoute(page: SystemUserForm()),
        (Route<dynamic> route) => true);
  }
}
