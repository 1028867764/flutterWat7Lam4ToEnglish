import 'package:flutter/material.dart';
import '../data/star_data.dart';

class StarDetailScreen extends StatelessWidget {
  final Star star;

  const StarDetailScreen({Key? key, required this.star}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(star.names.first)),
      body: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '名称: ${star.names.join(", ")}',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 16),
            // 这里可以添加更多恒星信息，如亮度、距离等
            // 需要扩展Star模型以包含这些信息
            Text('ID: ${star.id}', style: TextStyle(color: Colors.black)),
            SizedBox(height: 16),
            // 这里可以添加更多恒星信息，如亮度、距离等
            // 需要扩展Star模型以包含这些信息
            Text(
              '介绍: ${star.description}',
              style: TextStyle(color: Colors.black),
            ),
            // 可以添加恒星图片、详细描述等
          ],
        ),
      ),
    );
  }
}
