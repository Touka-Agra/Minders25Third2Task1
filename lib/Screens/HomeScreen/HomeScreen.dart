import 'package:flutter/material.dart';
import 'package:task1/DummyData.dart';

import '../../Classes/PendingTest.dart';
import '../../Classes/Subject.dart';
import '../../Core/MyColors.dart';
import '../../Customs/CustomTitleText.dart';
import 'HelpingWidgets/AppBar/MyAppBar.dart';
import 'HelpingWidgets/PendingTest/PendingTestWidget.dart';
import 'HelpingWidgets/PointsCard/PointsCard.dart';
import 'HelpingWidgets/Subject/SubjectWidget.dart';
import 'HelpingWidgets/WelcomWidget/WelcomWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(),
              SizedBox(height: 15),

              WelcomeWidget(),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: PointsCard(),
              ),

              PendingTestWidget(),

              SubjectWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
