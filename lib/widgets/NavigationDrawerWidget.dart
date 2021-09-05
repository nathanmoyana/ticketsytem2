import 'package:flutter/material.dart';

import '../routes/create_ticket.dart';
import '../routes/TicketList.dart';
import '../routes/login.dart';
import '../routes/services.dart';
import '../routes/notifications.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Create New',
              icon: Icons.assignment_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Pending',
              icon: Icons.pending,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Resolved',
              icon: Icons.check,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(
              height: 50,
            ),
            Divider(color: Colors.white70),
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Services',
              icon: Icons.phone,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Log Out',
              icon: Icons.logout,
              onClicked: () => selectedItem(context, 5),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainCreateTicket(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainTicketList(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainTicketList(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainNotifications(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainServices(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainLoginPage(),
        ));
        break;
    }
  }
}
