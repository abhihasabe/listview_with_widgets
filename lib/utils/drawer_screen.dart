import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreen createState() => new _DrawerScreen();
}

class _DrawerScreen extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    //final appState = AppState.of(context);
    return Drawer(
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('QuicSolv'),
              accountEmail: Text('hr@gmail.com'),
              currentAccountPicture:Image(
                image: AssetImage("assets/images/QuicSolv-Logo.png"),
              ),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              leading: Icon(Icons.blur_circular),
              title: Text('Home'),
              onTap: () {
                // This line code will close drawer programatically....
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Genral Public'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.enhanced_encryption),
              title: Text('Health Care Professional'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text('System User'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
