import 'package:flutter/material.dart';

import '../../../../Core/MyColors.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi Hala,",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Text.rich(
          TextSpan(
            text: 'You have ', // default style
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: '4 pending test ',
                style: TextStyle(color: MyColors.redColor), // different color
              ),
              TextSpan(text: 'this week'),
            ],
          ),
        ),

        //Text()
      ],
    );
  }
}
