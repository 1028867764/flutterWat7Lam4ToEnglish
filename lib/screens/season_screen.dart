import 'package:flutter/material.dart';
import 'constellation_screen.dart';
import '../widgets/constellation_card.dart';
import '../data/star_data.dart';

class SeasonScreen extends StatelessWidget {
  final SeasonData season;

  const SeasonScreen({Key? key, required this.season}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${season.season}星空')),
      body: Container(
        decoration: BoxDecoration(),
        child: ListView.builder(
          itemCount: season.constellations.length,
          itemBuilder: (context, index) {
            Constellation constellation = season.constellations[index];
            return ConstellationCard(
              constellation: constellation,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ConstellationScreen(
                          constellation: constellation,
                          seasonName: season.season,
                        ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
