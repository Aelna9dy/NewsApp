import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_item/category_items.dart';

class GridViewItemWidget extends StatelessWidget {
  CategoryModel categoryModel;
  Function onClicked;
  int index;

  GridViewItemWidget(
      {required this.onClicked,
      required this.categoryModel,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked(categoryModel);
      },
      child: Container(
        decoration: BoxDecoration(
            color: categoryModel.backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: index % 2 == 0
                  ? const Radius.circular(25)
                  : const Radius.circular(0),
              bottomRight: index % 2 == 0
                  ? const Radius.circular(0)
                  : const Radius.circular(25),
              topLeft: const Radius.circular(25),
              topRight: const Radius.circular(25),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              categoryModel.image,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              categoryModel.title,
              style: GoogleFonts.exo(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
