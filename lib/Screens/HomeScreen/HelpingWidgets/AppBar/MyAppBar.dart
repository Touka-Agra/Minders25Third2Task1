import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../Core/MyColors.dart';
import 'Widgets/ProfileCircularImage.dart';

class MyAppBar extends StatelessWidget {
  Color itemColors;

  MyAppBar({super.key, this.itemColors = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(CupertinoIcons.line_horizontal_3_decrease, color: itemColors),
          Row(
            children: [
              Icon(IconlyLight.notification, color: itemColors),
              const SizedBox(width: 12),
              Stack(
                children: [
                  ProfileCircularImage(),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: MyColors.highlightColor,
                      child: const Icon(
                        Icons.check,
                        size: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
