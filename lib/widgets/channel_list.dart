import 'package:flutter/material.dart';

// utils imports
import '../utils/colors/ytcolors.dart';

// widget imports
import 'channel.dart';

class YTChannelList extends StatelessWidget {
  const YTChannelList({super.key});

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    List<Map<String, dynamic>> channelList = [
      {
        'name': '2Passports',
        'profileSrc': 'images/avatar_c_1.jpeg',
        'isActive': true,
      },
      {
        'name': 'Hak Sienghou',
        'profileSrc': 'images/avatar_c_2.jpeg',
        'isActive': false,
      },
      {
        'name': 'Daily Toxic',
        'profileSrc': 'images/avatar_c_3.jpeg',
        'isActive': true,
      },
      {
        'name': 'Evan You',
        'profileSrc': 'images/avatar_c_4.jpeg',
        'isActive': true,
      },
      {
        'name': 'phaphapha',
        'profileSrc': 'images/avatar_c_5.jpeg',
        'isActive': false,
      },
      {
        'name': 'Loomberg',
        'profileSrc': 'images/avatar_c_6.jpeg',
        'isActive': true,
      },
      {
        'name': 'Food Facts',
        'profileSrc': 'images/avatar_c_7.jpeg',
        'isActive': true,
      },
      {
        'name': 'Forks',
        'profileSrc': 'images/avatar_c_8.jpeg',
        'isActive': false,
      },
      {
        'name': 'Andrei',
        'profileSrc': 'images/avatar_c_9.jpeg',
        'isActive': false,
      },
    ];

    return Container(
      height: 84,
      child: Stack(children: [
        ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: channelList.length,
          itemBuilder: (BuildContext context, int index) {
            return YTChannel(
              name: channelList[index]['name'],
              profileSrc: channelList[index]['profileSrc'],
              isActive: channelList[index]['isActive'],
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 10,
          ),
        ),
        Positioned(
          top: 0,
          right: -20,
          child: TextButton(
            child: Container(
              alignment: Alignment.center,
              width: 80,
              height: 68,
              color: ytColors.almostBlack,
              child: Text(
                'All',
                style: TextStyle(
                  color: ytColors.youtubeBlue,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
