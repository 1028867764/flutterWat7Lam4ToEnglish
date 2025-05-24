import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'data/writeable_character.dart';

class ReferPage extends StatelessWidget {
  final String testString;

  const ReferPage({super.key, required this.testString});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(testString)),
      body: SingleChildScrollView(child: Text(testString)),
    );
  }
}
