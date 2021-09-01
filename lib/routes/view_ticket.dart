import 'package:flutter/material.dart';
import 'login.dart';
import 'package:flutter/gestures.dart';

class MainViewTicket extends StatefulWidget {
  final String ticketNumber;
  final String urgentLevel;
  final String name;
  final String surname;
  final String email;
  final String request;
  final String description;
  final String company;
  final String branch;
  final String grade;
  final String status;

  MainViewTicket({
    required this.ticketNumber,
    required this.urgentLevel,
    required this.name,
    required this.surname,
    required this.email,
    required this.request,
    required this.description,
    required this.company,
    required this.branch,
    required this.grade,
    required this.status,
  });

  @override
  ViewTicket createState() => ViewTicket();
}

class ViewTicket extends State<MainViewTicket> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Ticket Page'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: (widget.ticketNumber.toUpperCase())),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.urgentLevel.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.name.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.surname.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.email.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.request.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.description.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.company.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.branch.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.grade.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.status.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainLoginPage()));
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
