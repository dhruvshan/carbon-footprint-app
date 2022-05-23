import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_profile/my_profile.dart';
import 'package:flutter_application_1/screens/settings/settings.dart';
import 'package:flutter_application_1/services/auth.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.green[400],
        child: ListView(padding: padding, children: <Widget>[
          SizedBox(height: 48),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('My Profile', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyProfilePage()));
            },
          ),
          SizedBox(height: 24),
          Divider(color: Colors.white70),
          SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('Logout', style: TextStyle(color: Colors.white)),
            onTap: () async {
              await _auth.signOut();
            },
          )
        ]),
      ),
    );
  }

  // Widget buildMenuItem({
  //   required String text,
  //   required IconData icon,
  // }) {
  //   final color = Colors.white;

  //   return ListTile(
  //     leading: Icon(icon, color: color),
  //     title: Text(text, style: TextStyle(color: color)),
  //     onTap: () {},
  //   );
  // }

//   void selectedItem(BuildContext context, int index) {
//     switch (index) {
//       case 2:
//         () async {
//           await _auth.signOut();
//         };
//     }
//   }
}
