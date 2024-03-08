import 'package:flutter/material.dart';

// component imports
import '../widgets/chip_list.dart';
import '../widgets/card.dart';
import '../widgets/shorts.dart';

// utils imports
import '../utils/colors/ytcolors.dart';
import '../utils/mock_data/mock_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    return Scaffold(
      backgroundColor: ytColors.almostBlack,
      appBar: AppBar(
        backgroundColor: ytColors.almostBlack,
        leading: Image.asset(
          'images/yt_logo_rgb_dark.png',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast_outlined,
              color: ytColors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: ytColors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: ytColors.white,
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            ChipList(),
            SizedBox(
              height: 8,
            ),
            CustomCard(
              avatarSrc: cardMockData[0]['avatarSrc'],
              title: cardMockData[0]['title'],
              imgSrc: cardMockData[0]['imgSrc'],
              metaData: cardMockData[0]['metaData'],
            ),
            Shorts(),
            for (int i = 1; i <= 3; i++)
              CustomCard(
                avatarSrc: cardMockData[i]['avatarSrc'],
                title: cardMockData[i]['title'],
                imgSrc: cardMockData[i]['imgSrc'],
                metaData: cardMockData[i]['metaData'],
              ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ytColors.white,
        unselectedItemColor: ytColors.white,
        backgroundColor: ytColors.almostBlack,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
