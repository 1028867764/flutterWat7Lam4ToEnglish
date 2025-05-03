import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(StarApp());
}

class StarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '星空探索',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
