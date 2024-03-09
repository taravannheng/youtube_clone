import 'package:flutter/material.dart';

// utils imports
import '../utils/colors/ytcolors.dart';

class YTChannel extends StatelessWidget {
  final String name;
  final String profileSrc;
  final bool isActive;

  const YTChannel({
    Key? key,
    required this.name,
    required this.profileSrc,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    return Container(
      width: 56,
      child: Column(
        children: [
          Stack(children: [
            CircleAvatar(
              backgroundImage: AssetImage(profileSrc),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                //Active Indicator
                width: isActive ? 16 : 0,
                height: isActive ? 16 : 0,
                decoration: BoxDecoration(
                  color: ytColors.youtubeBlue,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: ytColors.almostBlack,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(
              color: ytColors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
