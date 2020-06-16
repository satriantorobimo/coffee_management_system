import 'package:coffee_management_system/util/string.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Image.asset('asset/images/drink.png',
                      width: 120, fit: BoxFit.fitWidth)),
              Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Text('Proceed with your',
                      style: TextStyle(fontSize: 28))),
              Container(
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold))),
              Container(
                  margin: const EdgeInsets.only(top: 100.0),
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.person,
                            size: 16,
                          ),
                          labelText: 'Username',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: myFocusNode.hasFocus
                                  ? Colors.black12
                                  : Colors.black)))),
              Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.vpn_key,
                            size: 16,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: myFocusNode.hasFocus
                                  ? Colors.black12
                                  : Colors.black)))),
              Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, bottombarRoute);
                      },
                      child: Text('Login', style: TextStyle(fontSize: 14)))),
              Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text('Forgot password?',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black45)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
