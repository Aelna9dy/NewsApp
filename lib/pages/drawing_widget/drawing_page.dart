import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/pages/settings_pages/settings.dart';
import 'package:news_app/shared_component/theme/color.dart';

class DrawingWidget extends StatefulWidget {
  @override
  State<DrawingWidget> createState() => _DrawingWidgetState();
}

class _DrawingWidgetState extends State<DrawingWidget> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mediaQuery.width * 0.8,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: primaryColor,
              width: double.infinity,
              height: mediaQuery.height * 0.2,
              child: Text(
                "News App!",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.list,
                        color: Colors.black,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, SettingsPages.routeName);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Settings",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
