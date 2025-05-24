// main.dart
import 'package:flutter/material.dart';
import 'home_page.dart'; // 导入主页

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '鬱英词典',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(), // 设置主页为初始路由
    );
  }
}
