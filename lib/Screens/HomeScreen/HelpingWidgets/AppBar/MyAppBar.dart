import 'package:flutter/material.dart';

import '../../../../Core/MyColors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.list),
        Row(
          children: [
            const Icon(Icons.notifications_none_outlined),
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
