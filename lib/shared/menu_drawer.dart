import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bmi_screen.dart';
import 'package:flutter_application_1/screens/intro_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Drawer is the root for navbar, and it should contain a child.
      child: ListView(
        // ListView is a widget with scollable content
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'BMI Calculator',
      'Weather',
      'Training'
    ];
    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Text(
        'Globo Fitness',
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    ));

    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(element, style: const TextStyle(fontSize: 28)),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = const IntroScreen();
              break;
            case 'BMI Calculator':
              screen = const BmiScreen();
              break;
          }
          Navigator.of(context).pop; // so that navbar dissapears for next time when we'll go back to this route
          // Here we're using unnamed routes
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => screen)
          );
        },
      ));
    });

    return menuItems;
  }
}
