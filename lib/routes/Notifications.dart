import 'package:flutter/material.dart';
import 'package:ticket_system/widgets/NavigationDrawerWidget.dart';

class MainNotifications extends StatefulWidget {
  @override
  Notifications createState() => Notifications();
}

class Notifications extends State<MainNotifications> {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Text(
          'Notifications Page.',
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
