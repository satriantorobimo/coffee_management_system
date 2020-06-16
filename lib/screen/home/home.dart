import 'package:coffee_management_system/util/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: MediaQuery.of(context).padding,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        'https://d3mrtwiv4dr09z.cloudfront.net/media/catalog/product/cache/2/image/720x540/9df78eab33525d08d6e5fb8d27136e95/1/8/18beverage_Iced_Caramel_Macchiato_720x540.jpg',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            'Menu Andalan Hari Ini : Caramel Macchiato',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                  color: Style.themeData().primaryColor,
                  elevation: 2.0,
                  child: ListTile(
                      leading: Icon(Icons.person, size: 32),
                      title: Text('Today Barista at Sasamu',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      subtitle: Text('Johnny ', style: TextStyle(fontSize: 12)),
                      trailing: Text('Rp 250.000',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)))),
              Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: Text('Stok hari ini',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
              SizedBox(height: 8),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                childAspectRatio: MediaQuery.of(context).size.height / 1050,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 24.0,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(2, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'asset/images/kopi.jpg',
                              height: 80,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Positioned(
                              top: 2,
                              right: 2,
                              child: Icon(
                                Icons.brightness_1,
                                color: Colors.green,
                              ))
                        ]),
                      ),
                      Center(
                        child: Text(
                          "Arabica",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      Center(
                        child: Text(
                          "500gr",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(2, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'asset/images/kopi.jpg',
                              height: 80,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Positioned(
                              top: 2,
                              right: 2,
                              child: Icon(
                                Icons.brightness_1,
                                color: Colors.orange,
                              ))
                        ]),
                      ),
                      Center(
                        child: Text(
                          "Robusta",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      Center(
                        child: Text(
                          "150gr",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(2, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'asset/images/susu.jpg',
                              height: 80,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Positioned(
                              top: 2,
                              right: 2,
                              child: Icon(
                                Icons.brightness_1,
                                color: Colors.red,
                              ))
                        ]),
                      ),
                      Center(
                        child: Text(
                          "Susu",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      Center(
                        child: Text(
                          "100ml",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(2, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'asset/images/skm.jpg',
                              height: 80,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Positioned(
                              top: 2,
                              right: 2,
                              child: Icon(
                                Icons.brightness_1,
                                color: Colors.green,
                              ))
                        ]),
                      ),
                      Center(
                        child: Text(
                          "SKM",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      Center(
                        child: Text(
                          "500ml",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
