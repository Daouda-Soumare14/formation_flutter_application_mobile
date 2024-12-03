import 'package:flutter/material.dart';

class PiedDePage extends StatelessWidget {
  const PiedDePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff6f8ff),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color(0xFF5F67EA),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor:const Color.fromARGB(255, 69, 69, 69).withOpacity(0.7),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Accueil',
              icon: Icon(Icons.home, size: 50),
            ),
            BottomNavigationBarItem(
              label: 'A propos',
              icon: Icon(Icons.info),
            ),
            BottomNavigationBarItem(
              label: 'Notifications',
              icon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
