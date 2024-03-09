import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// utils imports
import '../utils/colors/ytcolors.dart';

class ChipList extends StatelessWidget {
  final bool hideExploreButton;

  const ChipList({
    Key? key,
    this.hideExploreButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YTColors ytColors = YTColors();

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
      color: ytColors.almostBlack,
      height: 56,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                hideExploreButton
                    ? Container()
                    : Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ytColors.lightBlack,
                        ),
                        width: 56,
                        height: 40,
                        child: IconButton(
                          style: ButtonStyle(
                            iconColor:
                                MaterialStateProperty.all(ytColors.white),
                          ),
                          icon: Icon(Icons.explore_outlined),
                          onPressed: () {},
                        ),
                      ),
                hideExploreButton
                    ? Container()
                    : SizedBox(
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
                          color: index == 0
                              ? ytColors.almostBlack
                              : ytColors.white,
                        ),
                        selected: index == 0 ? true : false,
                        showCheckmark: false,
                        selectedColor: ytColors.white,
                        onSelected: (bool selected) {},
                        backgroundColor: ytColors.lightBlack,
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
