import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_item/category_items.dart';

import '../home_page/grid_view_item_widget.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<CategoryModel> categoryList = [
    CategoryModel(
      id: "Sports",
      title: "Sports",
      image: "assets/images/sports.png",
      backgroundColor: Color(0xFFC91C22),
    ),
    CategoryModel(
      id: "Politics",
      title: "Politics",
      image: "assets/images/Politics.png",
      backgroundColor: Color(0xFF003E90),
    ),
    CategoryModel(
      id: "Health",
      title: "Health",
      image: "assets/images/health.png",
      backgroundColor: Color(0xFFED1E79),
    ),
    CategoryModel(
      id: "Bussines",
      title: "Bussines",
      image: "assets/images/bussines.png",
      backgroundColor: Color(0xFFCF7E48),
    ),
    CategoryModel(
      id: "Environment",
      title: "Environment",
      image: "assets/images/environment.png",
      backgroundColor: Color(0xFF4882CF),
    ),
    CategoryModel(
      id: "Science",
      title: "Science",
      image: "assets/images/science.png",
      backgroundColor: Color(0xFFF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pick your category\nof interest",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 7 / 8,
              ),
              itemBuilder: (context, index) => GridViewItemWidget(
                categoryModel: categoryList[index],
                index: index,
                onClicked: onClicked,
              ),
              itemCount: categoryList.length,
            ),
          )
        ],
      ),
    );
  }

  CategoryModel? selectedCategory;

  onClicked(CategoryModel categoryModel) {
    print("${categoryModel.title}");
    selectedCategory = categoryModel;
    setState(() {});
  }
}
