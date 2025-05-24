// detail_page.dart
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    String detailInfo = data.toString();
    String character = data['characters'][0];

    return Scaffold(
      appBar: AppBar(title: Text(character)),
      body: SingleChildScrollView(child: Text(detailInfo)),
    );
  }
}
