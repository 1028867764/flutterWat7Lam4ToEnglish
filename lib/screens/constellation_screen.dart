import 'package:flutter/material.dart';
import '../data/star_data.dart';
import 'star_detail_screen.dart';
import '../widgets/star_card.dart';

class ConstellationScreen extends StatelessWidget {
  final Constellation constellation;
  final String seasonName;

  const ConstellationScreen({
    Key? key,
    required this.constellation,
    required this.seasonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${constellation.names.first} ($seasonName)')),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '包含的恒星:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: constellation.stars.length,
                itemBuilder: (context, index) {
                  Star star = constellation.stars[index];
                  return StarCard(
                    star: star,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StarDetailScreen(star: star),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
