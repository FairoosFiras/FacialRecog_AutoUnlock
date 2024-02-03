import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 161, 40, 182),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Profile'),
            subtitle: Text('Edit your profile details'),
            leading: Icon(Icons.person, color: Colors.purple[200]),
<<<<<<< HEAD
            onTap: () {
              // Implement profile settings navigation or functionality
            },
=======
            onTap: () {},
>>>>>>> demo
          ),
          ListTile(
            title: Text('Notifications'),
            subtitle: Text('Manage your notification settings'),
            leading: Icon(Icons.notifications, color: Colors.purple[200]),
<<<<<<< HEAD
            onTap: () {
              // Implement notifications settings navigation or functionality
            },
=======
            onTap: () {},
>>>>>>> demo
          ),
          ListTile(
            title: Text('Security'),
            subtitle: Text('Change your password or enable extra security'),
            leading: Icon(Icons.security, color: Colors.purple[200]),
<<<<<<< HEAD
            onTap: () {
              // Implement security settings navigation or functionality
            },
=======
            onTap: () {},
>>>>>>> demo
          ),
          ListTile(
            title: Text('General'),
            subtitle: Text('Language, theme and other settings'),
            leading: Icon(Icons.settings, color: Colors.purple[200]),
<<<<<<< HEAD
            onTap: () {
              // Implement general settings navigation or functionality
            },
=======
            onTap: () {},
>>>>>>> demo
          ),
          ListTile(
            title: Text('About'),
            subtitle: Text('Information about the app'),
            leading: Icon(Icons.info, color: Colors.purple[200]),
<<<<<<< HEAD
            onTap: () {
              // Implement about app navigation or functionality
=======
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout, color: Colors.purple[200]),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false);
>>>>>>> demo
            },
          ),
        ],
      ),
    );
  }
}
<<<<<<< HEAD
=======
//had to add this comment to make it modified
//had to add this comment to make it modified
>>>>>>> demo
