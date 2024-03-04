import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// utils imports
import '../utils/colors/ytcolors.dart';

class CustomCard extends StatelessWidget {
  final String avatarSrc;
  final String imgSrc;
  final String title;
  final String metaData;

  // Constructor that requires three parameters
  const CustomCard({
    Key? key,
    required this.avatarSrc,
    required this.imgSrc,
    required this.title,
    required this.metaData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.amber,
          height: 200,
          child: Image.asset(
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatarSrc),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        title,
                        softWrap: true,
                        style: TextStyle(
                          color: ytColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        metaData,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                color: ytColors.white,
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              )
            ],
          ),
        ),
      ],
    );
  }
}
