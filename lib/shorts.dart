import 'package:flutter/material.dart';

// utils imports
import './utils/colors/ytcolors.dart';

class Shorts extends StatelessWidget {
  const Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                'images/yt_shorts.png',
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Shorts',
              style: TextStyle(
                color: ytColors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(children: [
                  Container(
                    height: double.infinity,
                    child: Image.asset(
                      'images/dota.jpeg',
                      opacity: AlwaysStoppedAnimation(0.6),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 8,
                    right: 8,
                    child: Text(
                      'Never miss new updates...',
                      softWrap: true,
                      style: TextStyle(
                          color: ytColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(children: [
                  Container(
                    height: double.infinity,
                    child: Image.asset(
                      'images/valorant.jpeg',
                      opacity: AlwaysStoppedAnimation(0.6),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 8,
                    right: 8,
                    child: Text(
                      'Valorant valorant valorant!!!',
                      softWrap: true,
                      style: TextStyle(
                          color: ytColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(children: [
                  Container(
                    height: double.infinity,
                    child: Image.asset(
                      'images/coc1.jpeg',
                      opacity: AlwaysStoppedAnimation(0.6),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 8,
                    right: 8,
                    child: Text(
                      'Halloween season challenges are here...',
                      softWrap: true,
                      style: TextStyle(
                          color: ytColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(children: [
                  Container(
                    height: double.infinity,
                    child: Image.asset(
                      'images/cs2.jpeg',
                      opacity: AlwaysStoppedAnimation(0.6),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 8,
                    right: 8,
                    child: Text(
                      'CS2 New version of Counter Strike',
                      softWrap: true,
                      style: TextStyle(
                          color: ytColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
