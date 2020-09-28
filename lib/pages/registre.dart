import 'package:flutter/material.dart';

class RegistrePage extends StatefulWidget {
  @override
  _RegistrePageState createState() => _RegistrePageState();
}

class _RegistrePageState extends State<RegistrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'Chof m3a Ljna',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
