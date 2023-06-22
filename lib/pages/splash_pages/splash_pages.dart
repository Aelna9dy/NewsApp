import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page/home_page.dart';

class SplashPages extends StatefulWidget {
  static const String routeName = "SplashPages";

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomePages.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/pattern.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
