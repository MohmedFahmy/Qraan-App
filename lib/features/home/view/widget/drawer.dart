import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الرائيسية'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('بحث'),
            onTap: () {
              // Navigate to Search Screen
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('الاعدادات'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
