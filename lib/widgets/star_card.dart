import 'package:flutter/material.dart';
import '../data/star_data.dart';

class StarCard extends StatelessWidget {
  final Star star;
  final VoidCallback onTap;

  const StarCard({Key? key, required this.star, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.black.withOpacity(0.5),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                star.names.first,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (star.names.length > 1)
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    '其他名称: ${star.names.sublist(1).join(", ")}',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
