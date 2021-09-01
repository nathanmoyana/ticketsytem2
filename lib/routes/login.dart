import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'create_ticket.dart';
import 'signup.dart';

class MainLoginPage extends StatefulWidget {
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<MainLoginPage> {
  bool _validate = false;
  bool? checkBoxValue = false;
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  String username = '';
  String password = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(50),
            child: TextField(
              controller: _username,
              decoration: InputDecoration(
                  labelText: 'Username',
                  errorText: !_validate ? 'Fill Field' : null),
              onChanged: (value) => setState(() => username = value),
            ),
          ),
          Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(50),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: !_validate ? 'Fill Field' : null),
              onChanged: (value) => setState(() => password = value),
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(200, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Text("Remember me"),
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool? value) {
                    setState(() {
                      checkBoxValue = value;
                    });
                  },
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(120, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Text("Don't have an account?"),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'SIGN UP',
                        style: new TextStyle(color: Colors.red, fontSize: 22),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainSignUp()));
                          })
                  ]),
                )
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(50),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  _username.text.isEmpty ? _validate = false : _validate = true;
                });
                _username.text.isNotEmpty && _password.text.isNotEmpty
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainCreateTicket()))
                    : null;
              },
              height: 50,
              color: Colors.black,
              child: Text(
                'LOG IN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
