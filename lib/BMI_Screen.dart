import 'package:flutter/material.dart';

class BMIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.green.shade500],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text('BMI', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 50),
            BMIItem(
              title: 'BMI Calculator',
            ),
            BMIItem(
              title: 'BMI Chart',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/lLmMbQOFR8IiAnMnnOHN0iX9tNiZ_Djli73jHPpRCLI.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class BMIItem extends StatelessWidget {
  final String title;
  final String? imageUrl;

  BMIItem({required this.title, this.imageUrl});

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
        ],
      ),
    );
  }
}