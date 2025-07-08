import 'package:flutter/material.dart';

import '../../../../Core/MyColors.dart';

class MyAppBar extends StatelessWidget {
  Color itemColors;

  MyAppBar({super.key, this.itemColors = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.list, color: itemColors),
        Row(
          children: [
            Icon(Icons.notifications_none_outlined, color: itemColors),
            const SizedBox(width: 12),
            Stack(
              children: [
                const CircleAvatar(child: Icon(Icons.ac_unit)),
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
    );
  }
}
