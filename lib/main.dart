import 'package:flutter/material.dart';
import 'pages/body_accueil.dart';
import 'pages/drawer_page.dart';
import 'pages/pied_de_page.dart';
import 'pages/app_bar_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarPage(scaffoldKey: _scaffoldKey),
      drawer: const DrawerPage(),
      body: BodyAccueil(),
      bottomNavigationBar: const PiedDePage(),
    );
  }
}
