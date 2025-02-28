import 'package:flutter/material.dart';

class PastDataScreen extends StatelessWidget {
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
              title: Text('Past Data', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 50),
            PastDataItem(
              title: 'Blood Glucose',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/Ny2L8NS9K50PFM5-WikGjesVWYo7O5ovSWtFubafZNw.jpg',
            ),
            PastDataItem(
              title: 'Heart Rate',
              imageUrl: 'https://storage.googleapis.com/a1aa/image/bjyM22MhzvyqVb0W62FZJkKjsgkkqwMPzRa0mfxS_KM.jpg',
            ),
            PastDataItem(
              title: 'Body Temperature',
              value: '98.5°F',
              status: 'Ideal',
            ),
            PastDataItem(
              title: 'Anemic Point',
            ),
          ],
        ),
      ),
    );
  }
}

class PastDataItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String? value;
  final String? status;

  PastDataItem({required this.title, this.imageUrl, this.value, this.status});

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
          if (status != null)
            Text(status!, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}