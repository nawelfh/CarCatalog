import 'package:car_catalog/screens/AllCarsScreen.dart';
import 'package:flutter/material.dart';
import '../screens/audi_screen.dart';
import '../screens/intro_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);
  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'All',
      'Audi',
      'BMW',
      'Volswagen',
      'Ford',
      'Peugot',
      'Reunault',
      'Kia'
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text('Car Catalog',
            style: TextStyle(color: Colors.white, fontSize: 28))));

    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'All':
                screen = AllCarsScreen();
                break;
              case 'Home':
                screen = IntroScreen();
                break;
              case 'Audi':
                screen = AudiScreen();
                break;
            }
            Navigator.of(context).pop();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screen));
          }));
    });
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(children: buildMenuItems(context)));
  }
}
