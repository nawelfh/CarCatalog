import 'package:car_catalog/shared/menu_bottom.dart';
import 'package:flutter/material.dart';
import '../shared/Menu_drawer.dart';
import '../shared/menu_bottom.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Contact Page')),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: Center(child: Text('Contacts')));
  }
}
