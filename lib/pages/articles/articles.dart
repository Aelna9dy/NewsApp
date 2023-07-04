import 'package:flutter/material.dart';
import 'package:news_app/shared_component/tab_item/tab_item.dart';

class ArticlesScreen extends StatefulWidget {
  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  List<String> sources = [
    "BBC News",
    "CBC News",
    "ON News",
    "BEIN News",
    "SKY News",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: sources.length,
      child: Column(
        children: [
          TabBar(
            padding: EdgeInsets.only(top: 5),
            isScrollable: true,
            indicatorColor: Colors.transparent,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            tabs: sources
                .map(
                  (source) => TabItems(
                      selectedIndex == sources.indexOf(source), source),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
