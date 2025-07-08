import 'package:flutter/material.dart';

import '../../../../Classes/PendingTest.dart';
import '../../../../Core/MyColors.dart';
import '../../../../Customs/CustomTitleText.dart';
import '../../../../DummyData.dart';
import 'Widgets/PendingTestItem.dart';

class PendingTestWidget extends StatelessWidget {
  const PendingTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomTitleText(title: "4 Pending tests "),
            Icon(Icons.error_outline, color: MyColors.redColor, size: 20),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: GridView.builder(
            itemCount: DummyData.pendingTests.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 8,
              childAspectRatio: 1.8,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,

            itemBuilder: (context, index) {
              PendingTest test = DummyData.pendingTests[index];
              return PendingTestItem(test: test);
            },
          ),
        ),
      ],
    );
  }
}
