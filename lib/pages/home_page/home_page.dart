import 'package:flutter/material.dart';
import 'package:news_app/models/category_item/category_items.dart';
import 'package:news_app/pages/articles/articles.dart';
import 'package:news_app/pages/drawing_widget/drawing_page.dart';

class HomePages extends StatefulWidget {
  static const String routeName = "HomePages";

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  CategoryModel? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/backGround.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            selectedCategory == null ? "NewsApp" : selectedCategory!.title,
          ),
        ),
        drawer: DrawingWidget(selectedCategory: selectedCategory),
        body: /*CategoriesScreen()*/ ArticlesScreen(),
      ),
    );
  }

}
