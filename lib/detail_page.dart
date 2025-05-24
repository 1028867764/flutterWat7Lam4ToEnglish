import 'package:flutter/material.dart';
import 'refer_page.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> data;
  final String routeKey;

  const DetailPage({super.key, required this.data, required this.routeKey});

  @override
  Widget build(BuildContext context) {
    String detailInfo = data.toString();
    String character = data['characters'][0];

    return Scaffold(
      appBar: AppBar(title: Text(character)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReferPage(testString: routeKey),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('可以点击这里'), Text(routeKey)],
                  ),
                ),
              ),
            ),
            Text(detailInfo),
          ],
        ),
      ),
    );
  }
}
