import 'package:flutter/material.dart';
import 'pages/body_accueil.dart';
import 'pages/drawer_page.dart';
import 'pages/pied_de_page.dart';
import 'pages/app_bar_page.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPage(),
      drawer: const DrawerPage(),
      body: BodyAccueil(),
      bottomNavigationBar: const PiedDePage(),
    );
  }
}
