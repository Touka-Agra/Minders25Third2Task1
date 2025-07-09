import 'package:flutter/material.dart';

import '../../../../../Core/MyPaths.dart';

class ProfileCircularImage extends StatelessWidget {
  const ProfileCircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: Container(
        width: 38,
        height: 38,
        decoration:  BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image:
                AssetImage(MyPaths.profile),
                fit: BoxFit.cover)),
      ),
    );
  }
}