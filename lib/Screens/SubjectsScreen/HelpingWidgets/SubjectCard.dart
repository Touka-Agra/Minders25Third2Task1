
import 'package:flutter/material.dart';

import '../../../Classes/Subject.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    super.key,
    required this.cardHeight,
    required this.cardWidth,
    required this.i,
    required this.widthDiff,
    required this.subjects,
  });

  final double cardHeight;
  final double cardWidth;
  final int i;
  final double widthDiff;
  final List<Subject> subjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth - i * widthDiff,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage(subjects[i].path),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Text(
              subjects[i].name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
