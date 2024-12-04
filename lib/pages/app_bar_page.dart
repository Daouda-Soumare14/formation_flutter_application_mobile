import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const AppBarPage({super.key, required this.scaffoldKey});

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
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.white,
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        }
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
