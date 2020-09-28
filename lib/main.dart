import 'package:flutter/material.dart';
import 'package:mts/backdrop.dart';
import 'package:mts/menupage.dart';
import 'package:mts/pages/home.dart';
import 'package:mts/pages/login.dart';
import 'package:mts/pages/registre.dart';

void main() {
  runApp(MTSApp());
}

class MTSApp extends StatefulWidget {
  @override
  _MTSAppState createState() => _MTSAppState();
}

class _MTSAppState extends State<MTSApp> {
  Category _currentCategory = Category.sessions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Backdrop(
        backLayer: CategoryMenuPage(
          currentCategory: _currentCategory,
        ),
        frontLayer: MyHome(),
        backTitle: Text(
          'MTS Menu',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        frontTitle: Text('Mroccans To Stand',
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => MyHome(),
        '/registre': (context) => RegistrePage(),
      },
      initialRoute: '/login',
    );
  }
}
