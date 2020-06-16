import 'package:coffee_management_system/util/router.dart';
import 'package:coffee_management_system/util/string.dart';
import 'package:coffee_management_system/util/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Management System',
      theme: Style.themeData(),
      onGenerateRoute: Router.generateRoute,
      initialRoute: splashscreenRoute,
    );
  }
}
