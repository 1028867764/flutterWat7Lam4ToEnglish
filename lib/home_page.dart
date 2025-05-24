import 'package:flutter/material.dart';
import 'display_page.dart';
import 'data/writeable_character.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _headController = TextEditingController();
  final TextEditingController _tailController = TextEditingController();
  String _searchMode = 'common';
  String? currentTail;
  List<String>? currentHead = [];

  final List<String> tailList = [
    'm',
    'n',
    'ng',
    'p',
    't',
    'k',
    '陽-棚',
    '元音韵尾·平',
    '元音韵尾·上',
    '元音韵尾·去',
  ];
  final List<String> headList = [
    '零声母',
    'b-bb',
    'c',
    'd-dd',
    'f',
    'g',
    'h',
    'j',
    'k',
    'l',
    'm',
    'n',
    'ng',
    'nj',
    'p',
    's',
    'sl',
    't',
    'w',
    'z',
  ];
  Map<String, bool> howManyHead = {
    '零声母': false,
    'b-bb': false,
    'c': false,
    'd-dd': false,
    'f': false,
    'g': false,
    'h': false,
    'j': false,
    'k': false,
    'l': false,
    'm': false,
    'n': false,
    'ng': false,
    'nj': false,
    'p': false,
    's': false,
    'sl': false,
    't': false,
    'w': false,
    'z': false,
  };

  void _changeTail(String item) {
    if (currentTail == null) {
      setState(() {
        currentTail = item;
      });
    } else if (currentTail != null && item != currentTail) {
      setState(() {
        currentTail = item;
      });
    } else {
      setState(() {
        currentTail = null;
      });
    }
  }

  void _commonSearch() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('尚未开通，敬请期待')));
  }

  void addHead(String item, Map<String, bool> forCount) {
    // 计算 value 为 true 的数量
    late int trueCount = forCount.values.where((value) => value == true).length;
    // 判断数量是否少于 6 个
    late bool isLessThanSix = trueCount < 5;
    if (isLessThanSix) {
      setState(() {
        howManyHead[item] = !(howManyHead[item] ?? true);
      });
    } else {
      setState(() {
        howManyHead[item] = false;
      });
    }
    List<String> updateHeadList =
        forCount.entries
            .where((entry) => entry.value == true) // 筛选出值为 true 的键值对
            .map((entry) => entry.key) // 提取键
            .toList(); // 转换为 List<String>

    setState(() {
      currentHead = updateHeadList;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void searchWat7dict() {
    // 获取选中的 head 和 tail
    List<String> selectedHeads = currentHead ?? [];
    String? selectedTail = currentTail;

    // 检查是否满足搜索条件
    if (selectedHeads.isEmpty || selectedTail == null) {
      // 如果不满足条件，可以弹出一个提示或者直接返回
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('请选择至少一个 声母 和一个 韵尾')));
      return;
    }

    // 过滤数据
    Map<String, dynamic>? searchResults = {};
    List<String>? searchResultsKeys = [];
    uData['data'].forEach((key, value) {
      // 检查 head 和 tail 是否匹配
      bool headMatch = selectedHeads.any((head) => value['head'] == head);
      bool tailMatch = value['tail'] == selectedTail;

      if (headMatch && tailMatch) {
        searchResultsKeys.add(key);
        searchResults[key] = value;
      }
    });
    // 导航到结果页面
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => DisplayPage(
              filterdKey: searchResultsKeys,
              filterdMap: searchResults,
            ),
      ),
    );
  }

  void _changeSearchMode(String modeName) {
    setState(() {
      _searchMode = modeName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Material(
                    color: Colors.transparent, // 不设置背景色就不会遮住子组件
                    child: InkWell(
                      onTap: () {
                        _changeSearchMode('common');
                      },

                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                _searchMode == 'common'
                                    ? Colors.blue
                                    : Colors.black.withOpacity(0.1),
                            width: _searchMode == 'common' ? 1.0 : 0.5,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(0),
                          ),
                        ),
                        child: Text(
                          '常规搜索',
                          style: TextStyle(
                            fontSize: 14, // 字体大小
                            color:
                                _searchMode == 'common'
                                    ? Colors.blue
                                    : Colors.black,
                            fontWeight:
                                _searchMode == 'common'
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Material(
                    color: Colors.transparent, // 不设置背景色就不会遮住子组件
                    child: InkWell(
                      onTap: () {
                        _changeSearchMode('twoEnds');
                      },

                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                _searchMode == 'twoEnds'
                                    ? Colors.blue
                                    : Colors.black.withOpacity(0.1),
                            width: _searchMode == 'twoEnds' ? 1.0 : 0.5,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Text(
                          '声母+韵尾',
                          style: TextStyle(
                            fontSize: 14, // 字体大小
                            color:
                                _searchMode == 'twoEnds'
                                    ? Colors.blue
                                    : Colors.black,
                            fontWeight:
                                _searchMode == 'twoEnds'
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            if (_searchMode == 'common')
              IntrinsicHeight(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextField(
                        controller: _tailController,
                        decoration: InputDecoration(
                          labelText: '请输入',
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),

                    SizedBox(width: 2),
                    Expanded(
                      flex: 1,
                      child: Material(
                        color: Colors.transparent, // 不设置背景色就不会遮住子组件
                        child: InkWell(
                          onTap: () {
                            _commonSearch();
                          },

                          child: Center(
                            child: Text(
                              '搜',
                              style: const TextStyle(
                                fontSize: 14, // 字体大小
                                color: Colors.blue, // 字体颜色
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (_searchMode == 'twoEnds')
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (currentHead!.length >= 5) {
                                addHead(currentHead![4], howManyHead);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color:
                                    currentHead!.isEmpty ||
                                            currentHead!.length < 5
                                        ? Colors.blue[50]
                                        : Colors.blue[200],
                                borderRadius: BorderRadius.only(
                                  // 分别指定四个角的半径
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                              ),

                              child: Text(
                                currentHead!.isEmpty || currentHead!.length < 5
                                    ? currentHead!.isEmpty
                                        ? '请'
                                        : ''
                                    : currentHead![4],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 5
                                          ? FontWeight.normal
                                          : FontWeight.bold,
                                  color:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 5
                                          ? Colors.black
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (currentHead!.length >= 3) {
                                addHead(currentHead![2], howManyHead);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color:
                                    currentHead!.isEmpty ||
                                            currentHead!.length < 3
                                        ? Colors.blue[50]
                                        : Colors.blue[200],
                                borderRadius: BorderRadius.only(
                                  // 分别指定四个角的半径
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text(
                                currentHead!.isEmpty || currentHead!.length < 3
                                    ? currentHead!.isEmpty
                                        ? '选'
                                        : ''
                                    : currentHead![2],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 3
                                          ? FontWeight.normal
                                          : FontWeight.bold,
                                  color:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 3
                                          ? Colors.black
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (currentHead!.isNotEmpty) {
                                addHead(currentHead![0], howManyHead);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color:
                                    currentHead!.isEmpty
                                        ? Colors.blue[50]
                                        : Colors.blue[200],
                                borderRadius: BorderRadius.only(
                                  // 分别指定四个角的半径
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text(
                                currentHead!.isEmpty ? '择' : currentHead![0],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      currentHead!.isEmpty
                                          ? FontWeight.normal
                                          : FontWeight.bold,
                                  color:
                                      currentHead!.isEmpty
                                          ? Colors.black
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (currentHead!.length >= 2) {
                                addHead(currentHead![1], howManyHead);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color:
                                    currentHead!.isEmpty ||
                                            currentHead!.length < 2
                                        ? Colors.blue[50]
                                        : Colors.blue[200],
                                borderRadius: BorderRadius.only(
                                  // 分别指定四个角的半径
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text(
                                currentHead!.isEmpty || currentHead!.length < 2
                                    ? currentHead!.isEmpty
                                        ? '声'
                                        : ''
                                    : currentHead![1],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 2
                                          ? FontWeight.normal
                                          : FontWeight.bold,
                                  color:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 2
                                          ? Colors.black
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (currentHead!.length >= 4) {
                                addHead(currentHead![3], howManyHead);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color:
                                    currentHead!.isEmpty ||
                                            currentHead!.length < 4
                                        ? Colors.blue[50]
                                        : Colors.blue[200],
                                borderRadius: BorderRadius.only(
                                  // 分别指定四个角的半径
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text(
                                currentHead!.isEmpty || currentHead!.length < 4
                                    ? currentHead!.isEmpty
                                        ? '母'
                                        : ''
                                    : currentHead![3],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 4
                                          ? FontWeight.normal
                                          : FontWeight.bold,
                                  color:
                                      currentHead!.isEmpty ||
                                              currentHead!.length < 4
                                          ? Colors.black
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.1),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTail = null;
                        });
                        ;
                      },
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              (currentTail == null)
                                  ? Colors.blue[50]
                                  : Colors.yellow.shade100,
                          borderRadius: BorderRadius.only(
                            // 分别指定四个角的半径
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          border: Border.all(
                            color:
                                (currentTail == null)
                                    ? Colors.blue
                                    : Colors.yellow,
                            width: (currentTail == null) ? 0 : 2,
                          ),
                        ),

                        child: Text(
                          currentTail ?? '请选择韵尾',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight:
                                (currentTail == null)
                                    ? FontWeight.normal
                                    : FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (_searchMode == 'twoEnds')
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45, width: 1),
                        ),
                        child: ListView(
                          children:
                              headList
                                  .map(
                                    (item) => GestureDetector(
                                      onTap: () {
                                        addHead(item, howManyHead);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        alignment: Alignment.center,
                                        color:
                                            (howManyHead[item] ?? false)
                                                ? Colors.blue[200]
                                                : Colors.grey[200],
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          onTap: () {
                            searchWat7dict();
                          },

                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade50,
                              borderRadius: BorderRadius.only(
                                // 分别指定四个角的半径
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              border: Border.all(
                                color: Colors.purple.shade200,
                                width: 2,
                              ),
                            ),
                            child: Text(
                              '鬱',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45, width: 1),
                        ),
                        child: ListView(
                          children:
                              tailList
                                  .map(
                                    (item) => GestureDetector(
                                      onTap: () {
                                        _changeTail(item);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        alignment: Alignment.center,
                                        color:
                                            item == (currentTail ?? false)
                                                ? Colors.blue[200]
                                                : Colors.grey[200],
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
