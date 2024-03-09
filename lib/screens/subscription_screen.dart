import 'package:flutter/material.dart';

// component imports
import '../widgets/chip_list.dart';
import '../widgets/card.dart';
import '../widgets/channel_list.dart';

// utils imports
import '../utils/colors/ytcolors.dart';
import '../utils/mock_data/mock_data.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    return Scaffold(
      backgroundColor: ytColors.almostBlack,
      body: ListView(children: [
        Column(
          children: [
            YTChannelList(),
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
    );
  }
}
