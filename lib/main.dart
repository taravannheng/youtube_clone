import 'package:flutter/material.dart';

void main() => runApp(const Youtube());

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    Color almostBlack = Color.fromRGBO(40, 40, 40, 1);
    Color white = Color.fromRGBO(255, 255, 255, 1);
    Color youtubeRed = Color.fromRGBO(255, 0, 0, 1);

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: almostBlack,
            leading: Image.asset(
              'images/yt_logo_rgb_dark.png',
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cast_outlined,
                  color: white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  color: white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: white,
                ),
              ),
            ],
          ),
          // body: ,
          // bottomNavigationBar: ,
        ),
      ),
    );
  }
}
