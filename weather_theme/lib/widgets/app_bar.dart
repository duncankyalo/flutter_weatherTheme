import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  CustomAppBar({required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
        ),
      ),
      actions: actions, // Use the provided actions
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}