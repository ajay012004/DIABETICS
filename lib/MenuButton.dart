import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  MenuButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        iconColor: Colors.blue.shade700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}