import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page/home_page.dart';
import 'package:news_app/pages/splash_pages/splash_pages.dart';
import 'package:news_app/shared_component/theme/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: SplashPages.routeName,
      routes: {
        SplashPages.routeName: (context) => SplashPages(),
        HomePages.routeName: (context) => HomePages(),
      },
    );
  }
}
