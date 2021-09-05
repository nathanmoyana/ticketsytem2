import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ticket_system/widgets/NavigationDrawerWidget.dart';

class MainDrawer extends StatefulWidget {
  @override
  Drawer createState() => Drawer();
}

class Drawer extends State<MainDrawer> {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Welcome'),
      ),
    );
  }
}
