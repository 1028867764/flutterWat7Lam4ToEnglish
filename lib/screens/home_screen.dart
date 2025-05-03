import 'package:flutter/material.dart';
import '../data/star_data.dart';
import 'season_screen.dart';
import '../data/star_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('星空探索'), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(),
        child: ListView.builder(
          itemCount: starData.length,
          itemBuilder: (context, index) {
            SeasonData season = starData[index];
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.black.withOpacity(0.5),
              child: ListTile(
                title: Text(
                  season.season,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SeasonScreen(season: season),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
