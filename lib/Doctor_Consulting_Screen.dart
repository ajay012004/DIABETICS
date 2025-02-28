import 'package:flutter/material.dart';

class DoctorConsultingScreen extends StatelessWidget {
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
              title: Text('Doctor Consulting', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 50),
            DoctorConsultingItem(
              title: 'Schedule',
            ),
            DoctorConsultingItem(
              title: 'Start',
              isButton: true,
            ),
            DoctorConsultingItem(
              title: 'Reports',
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorConsultingItem extends StatelessWidget {
  final String title;
  final bool isButton;

  DoctorConsultingItem({required this.title, this.isButton = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(8),
      ),
      child: isButton
          ? Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(title, style: TextStyle(color: Colors.white)),
              ),
            )
          : Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}