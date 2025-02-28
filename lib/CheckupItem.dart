import 'package:flutter/material.dart';

class CheckupItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String? value;

  CheckupItem({required this.title, this.imageUrl, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          if (imageUrl != null)
            Image.network(imageUrl!, width: double.infinity, height: 50),
          if (value != null)
            Text(value!, style: TextStyle(color: Colors.white, fontSize: 24)),
        ],
      ),
    );
  }
}