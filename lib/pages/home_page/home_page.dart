import 'package:flutter/material.dart';
import 'package:news_app/pages/drawing_widget/drawing_page.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  static const String routeName = "HomePages";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/pattern.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(),
        drawer: DrawingWidget(),
        body: Container(),
      ),
    );
  }
}
