import 'package:flutter/material.dart';
import 'main_menu_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to MainMenuScreen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainMenuScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          'https://storage.googleapis.com/a1aa/image/oQI-XwSpuvjKuAEs3Tc_3XmUmv6TveNaQRltcypzyMA.jpg',
          width: 100,
          height: 50,
        ),
      ),
    );
  }
}