import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/lion2.png',
                  height: 150,
                ),
                SizedBox(height: 16.0),
                Text(
                  'MOROCCAN TO \n STAND',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: -1,
                      fontSize: 20,
                      color: Colors.grey[900],
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(height: 100.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.brown[400]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                labelText: 'Moblie num',
              ),
            ),
            // spacer
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.brown[400]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Text('CLEAR'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                RaisedButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Text('NEXT'),
                  elevation: 8.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Not a memeber ?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                RaisedButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Row(
                    children: [Text('REGISTER  '), Icon(Icons.person_add)],
                  ),
                  elevation: 8.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/registre');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
