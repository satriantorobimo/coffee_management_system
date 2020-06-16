import 'dart:async';

import 'package:coffee_management_system/util/string.dart';
import 'package:coffee_management_system/util/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.pushReplacementNamed(context, loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Style.themeData().primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Image.asset('asset/images/drink.png',
                    width: 120, fit: BoxFit.fitWidth)),
            Center(
                child: Text('Coffee Management System',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
