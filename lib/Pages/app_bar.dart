import 'package:flutter/material.dart';

class AppBarTemplate extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Midterm App',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
