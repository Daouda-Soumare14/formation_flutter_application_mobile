import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Mon app flutter",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xFF5F67EA),
      // leading: const Icon(
      //   Icons.menu,
      //   color: Colors.white,
      // ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
