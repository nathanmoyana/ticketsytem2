import 'package:flutter/material.dart';
import 'routes/login.dart';
import 'routes/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket System'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(50),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainLoginPage()));
              },
              height: 50,
              color: Colors.black,
              child: Text(
                'LOG IN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(50),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainSignUp()));
              },
              height: 50,
              color: Colors.black,
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
