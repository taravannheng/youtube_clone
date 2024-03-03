import 'package:flutter/material.dart';

// component imports
import 'chip_list.dart';
import 'card.dart';

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
          backgroundColor: almostBlack,
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
            selectedItemColor: white,
            unselectedItemColor: white,
            backgroundColor: almostBlack,
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
