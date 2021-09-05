import 'package:flutter/material.dart';
import 'package:ticket_system/widgets/NavigationDrawerWidget.dart';

class MainTicketList extends StatefulWidget {
  @override
  TicketList createState() => TicketList();
}

class TicketList extends State<MainTicketList> {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Text(
          'Ticket List Empty. Please Create New Ticket.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            // decoration: TextDecoration.underline
          ),
        ),
      ),
    );
  }
}
