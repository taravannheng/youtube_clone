import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    Color almostBlack = Color.fromRGBO(40, 40, 40, 1);
    Color white = Color.fromRGBO(255, 255, 255, 1);
    Color youtubeRed = Color.fromRGBO(255, 0, 0, 1);

    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.amber,
          height: 200,
          child: Image.asset(
            'images/coc1.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpeg'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Proof Your Archer Queen Equipment Priority is Wrong...',
                        softWrap: true,
                        style: TextStyle(
                          color: white,
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
                        'BDLegend - Clash of Clans · 3.2K views · 2 hours ago',
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
                color: white,
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
