import 'package:flutter/material.dart';

// screen imports
import 'screens/home_screen.dart';
import 'screens/subscription_screen.dart';

// utils imports
import 'utils/colors/ytcolors.dart';

void main() => runApp(const Youtube());

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  int _selectedIndex = 0;
  YTColors ytColors = YTColors();

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SubscriptionScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ytColors.white,
          unselectedItemColor: ytColors.white,
          backgroundColor: ytColors.almostBlack,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? Icon(Icons.home_filled)
                  : Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Icon(Icons.subscriptions)
                  : Icon(Icons.subscriptions_outlined),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'You',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
      routes: {
        '/subscription': (context) => const SubscriptionScreen(),
      },
    );
  }
}
