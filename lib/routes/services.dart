import 'package:flutter/material.dart';
import 'package:ticket_system/widgets/NavigationDrawerWidget.dart';

class MainServices extends StatefulWidget {
  @override
  Services createState() => Services();
}

class Services extends State<MainServices> {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Text(
          'Services Page.',
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
