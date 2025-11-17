import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E004F),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120, height:120,
              decoration: BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle
              ),
              child: Center(child: Text('ॐ', style: TextStyle(fontSize: 48, color: Color(0xFFE6B800)))),
            ),
            SizedBox(height:16),
            Text('AstroSetu', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height:8),
            Text('Kundli & Predictive Astrology', style: TextStyle(color: Colors.white70))
          ],
        ),
      ),
    );
  }
}
