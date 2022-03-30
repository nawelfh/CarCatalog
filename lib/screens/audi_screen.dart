import 'package:car_catalog/shared/Menu_drawer.dart';
import 'package:flutter/material.dart';
import '../shared/menu_bottom.dart';

class AudiScreen extends StatelessWidget {
  const AudiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Audi Page')),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: Center(child: Text('Audi Catalog')));
  }
}
