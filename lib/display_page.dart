import 'package:flutter/material.dart';
import 'detail_page.dart';

class DisplayPage extends StatelessWidget {
  final Map<String, dynamic> filterdMap;
  final List<String> filterdKey;

  DisplayPage({required this.filterdMap, required this.filterdKey});

  final Color bSColor = Colors.blue.withOpacity(0.1);
  final double bSWidth = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Results')),
      body: ListView.builder(
        itemCount: filterdKey.length,
        itemBuilder: (context, index) {
          String key = filterdKey[index];
          dynamic value = filterdMap[key]; // 直接使用 key 获取 value
          return Material(
            color: Colors.transparent, // 不设置背景色就不会遮住子组件
            child: InkWell(
              onTap: () {
                // 直接跳转到详情页，并传递完整的 value 数据
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailPage(data: value, routeKey: key),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: Colors.blue[50],
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        value["characters"].join(", "),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 15),

                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 5,
                                ),
                                width: MediaQuery.of(context).size.width * 0.25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      color: bSColor,
                                      width: bSWidth,
                                    ),
                                    top: BorderSide(
                                      color: bSColor,
                                      width: bSWidth,
                                    ),
                                    right: BorderSide(
                                      color: bSColor,
                                      width: 0.5,
                                    ),
                                    bottom: BorderSide(
                                      color: bSColor,
                                      width: 0.5,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  '鬱拼',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: bSColor,
                                        width: 0.5,
                                      ),
                                      top: BorderSide(
                                        color: bSColor,
                                        width: bSWidth,
                                      ),
                                      right: BorderSide(
                                        color: bSColor,
                                        width: bSWidth,
                                      ),
                                      bottom: BorderSide(
                                        color: bSColor,
                                        width: 0.5,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(value['jyutping']),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 5,
                                ),
                                width: MediaQuery.of(context).size.width * 0.25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      color: bSColor,
                                      width: bSWidth,
                                    ),
                                    top: BorderSide(color: bSColor, width: 0.5),
                                    right: BorderSide(
                                      color: bSColor,
                                      width: 0.5,
                                    ),
                                    bottom: BorderSide(
                                      color: bSColor,
                                      width: bSWidth,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  '组词',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: bSColor,
                                        width: 0.5,
                                      ),
                                      top: BorderSide(
                                        color: bSColor,
                                        width: 0.5,
                                      ),
                                      right: BorderSide(
                                        color: bSColor,
                                        width: bSWidth,
                                      ),
                                      bottom: BorderSide(
                                        color: bSColor,
                                        width: bSWidth,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(''),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
