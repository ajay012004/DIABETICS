import 'package:flutter/material.dart';

class DietPlanScreen extends StatelessWidget {
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
              title: Text('Diet Plan', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 50),
            DietPlanItem(
              week: 'Week 1',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/VdoTXn1KJhbQeek8St0glZCG0t89HgoeL7D6VjTwq7M.jpg',
            ),
            DietPlanItem(
              week: 'Week 2',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/e4Vf5hYvrSGFZBC6bBnju9dSdgDPvQPZM05Irw2W95I.jpg',
            ),
            DietPlanItem(
              week: 'Week 3',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/yA7In440ORzvacnydOHJ2SyVaYL7XGqz5O6rMte2uxc.jpg',
            ),
            DietPlanItem(
              week: 'Week 4',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/JFlVnPECRBQNwyLP2lxnTJKEEfw1ZvHDnYYT08liJ4g.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class DietPlanItem extends StatelessWidget {
  final String week;
  final String imageUrl;

  DietPlanItem({required this.week, required this.imageUrl});

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
          Text(week, style: TextStyle(color: Colors.white)),
          Image.network(imageUrl, width: double.infinity, height: 50),
        ],
      ),
    );
  }
}