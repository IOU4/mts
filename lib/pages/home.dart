import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Image.asset(
            'assets/drawing.png',
            height: 350,
          ),
          Text('Hna ikno les sessions',
              style: TextStyle(
                fontSize: 30,
              )),
        ],
      )),
    );
  }
}
