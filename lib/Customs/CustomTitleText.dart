import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  String title;

  CustomTitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
