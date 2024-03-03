import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipList extends StatelessWidget {
  const ChipList({super.key});

  @override
  Widget build(BuildContext context) {
    Color almostBlack = Color.fromRGBO(40, 40, 40, 1);
    Color lightBlack = Color.fromRGBO(60, 60, 60, 1);
    Color white = Color.fromRGBO(255, 255, 255, 1);
    Color youtubeRed = Color.fromRGBO(255, 0, 0, 1);

    List chipListLabels = [
      'All',
      'Gaming',
      'Music',
      'Clash of Clans',
      'Radio France Internationale',
      'Championships',
      'Twinkle Twinkle Little Star',
      'Formula 1',
      'Highlight films',
      'Action-adventure games'
    ];

    return Container(
      color: almostBlack,
      height: 56,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: lightBlack,
                  ),
                  width: 56,
                  height: 40,
                  child: IconButton(
                    style: ButtonStyle(
                      iconColor: MaterialStateProperty.all(white),
                    ),
                    icon: Icon(Icons.explore_outlined),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: chipListLabels.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ChoiceChip(
                        label: Text(chipListLabels[index]),
                        labelStyle: TextStyle(
                          color: index == 0 ? almostBlack : white,
                        ),
                        selected: index == 0 ? true : false,
                        showCheckmark: false,
                        selectedColor: white,
                        onSelected: (bool selected) {},
                        backgroundColor: lightBlack,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
