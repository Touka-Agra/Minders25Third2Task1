import 'package:flutter/material.dart';

import '../../Classes/Subject.dart';
import '../../DummyData.dart';
import '../HomeScreen/HelpingWidgets/AppBar/MyAppBar.dart';
import 'HelpingWidgets/SubjectCard.dart';

class SubjectsScreen extends StatelessWidget {
  SubjectsScreen({super.key});

  List<Subject> subjects = DummyData.subjects;

  double overlapOffset = 65;
  double widthDiff = 25;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    double cardWidth = w * 0.875;
    double cardHeight = h * 0.2;

    double totalHeight = (cardHeight + overlapOffset) * (subjects.length - 1);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyAppBar(itemColors: Colors.white),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SizedBox(
              height: totalHeight,
              child: Stack(
                children: [
                  for (int i = 0; i < subjects.length; i++)
                    Positioned(
                      top: i * 2 * overlapOffset,
                      child: SubjectCard(cardHeight: cardHeight, cardWidth: cardWidth, i: i, widthDiff: widthDiff, subjects: subjects),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
