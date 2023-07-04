import 'package:flutter/material.dart';
import 'package:news_app/shared_component/theme/color.dart';

class TabItems extends StatelessWidget {
  bool selected;
  String sourceTitle;

  TabItems(this.selected, this.sourceTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: selected ? primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: primaryColor, width: 2),
      ),
      child: Text(
        sourceTitle,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: selected ? Colors.white : primaryColor,
        ),
      ),
    );
  }
}
