import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/home.dart';

void main() {
  runApp(AstroSetuApp());
}

class AstroSetuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroSetu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4B0082),
        scaffoldBackgroundColor: Color(0xFFF8F4FB),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF4B0082),
          foregroundColor: Colors.white
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFE6B800),
        ),
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
      routes: {
        '/home': (_) => HomeScreen(),
      },
    );
  }
}
