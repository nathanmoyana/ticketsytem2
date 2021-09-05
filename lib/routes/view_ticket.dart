import 'package:flutter/material.dart';
import 'package:ticket_system/widgets/NavigationDrawerWidget.dart';
import 'login.dart';
import 'TicketList.dart';

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
      endDrawer: NavigationDrawerWidget(),
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
                  labelText:
                      ('Ticket Number : ' + widget.ticketNumber.toUpperCase())),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Urgent Level : ' + widget.urgentLevel.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Name : ' + widget.name.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Surname : ' + widget.surname.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email : ' + widget.email.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Request : ' + widget.request.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText:
                    'Problem Description : ' + widget.description.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Company Name : ' + widget.company.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Branch Name : ' + widget.branch.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Grade : ' + widget.grade.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Assignment Status : ' + widget.status.toUpperCase(),
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainTicketList()));
              },
              height: 50,
              color: Colors.black,
              child: Text(
                'SAVE',
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
