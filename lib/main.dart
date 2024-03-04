import 'package:flutter/material.dart';

// component imports
import 'widgets/chip_list.dart';
import 'widgets/card.dart';
import 'widgets/shorts.dart';

// utils imports
import './utils/colors/ytcolors.dart';

void main() => runApp(const Youtube());

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
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
                  avatarSrc: 'images/avatar.jpeg',
                  title:
                      'Proof Your Archer Queen Equipment Priority is Wrong...',
                  imgSrc: 'images/coc1.jpeg',
                  metaData:
                      'BDLegend - Clash of Clans · 3.2K views · 2 hours ago',
                ),
                Shorts(),
                CustomCard(
                  avatarSrc: 'images/avatar1.jpeg',
                  title: 'Valorant updates are coming...',
                  imgSrc: 'images/valorant.jpeg',
                  metaData: 'VMasters · 1.3K views · 1 hour ago',
                ),
                CustomCard(
                  avatarSrc: 'images/avatar2.jpeg',
                  title: 'Show off your strats - defeat your enemies!',
                  imgSrc: 'images/dota.jpeg',
                  metaData: 'Dota2 Official · 4.5K views · 3 hours ago',
                ),
                CustomCard(
                  avatarSrc: 'images/avatar3.jpeg',
                  title: 'CS2 is here...',
                  imgSrc: 'images/cs2.jpeg',
                  metaData: 'Counter Strike Official · 1K views · 12 hours ago',
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
        ),
      ),
    );
  }
}
