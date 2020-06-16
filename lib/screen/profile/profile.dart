import 'package:coffee_management_system/util/string.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, loginRoute);
              },
              child: Text('Logout'))),
    );
  }
}
