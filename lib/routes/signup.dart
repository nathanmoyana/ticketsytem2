import 'package:flutter/material.dart';
import 'login.dart';
import 'create_ticket.dart';

class MainSignUp extends StatefulWidget {
  @override
  SignUp createState() => SignUp();
}

class SignUp extends State<MainSignUp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Surname'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Company Name'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Branch Name'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Telephone'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'City'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Region'),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Repeat Password'),
              obscureText: true,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainCreateTicket()));
              },
              height: 50,
              color: Colors.black,
              child: Text(
                'SUBMIT',
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
