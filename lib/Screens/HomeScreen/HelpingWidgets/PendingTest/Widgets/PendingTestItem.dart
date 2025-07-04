import 'package:flutter/material.dart';

import '../../../../../Classes/PendingTest.dart';
import '../../../../../Core/MyColors.dart';
import '../../../../../Customs/CustomTitleText.dart';

class PendingTestItem extends StatelessWidget {
  const PendingTestItem({super.key, required this.test});

  final PendingTest test;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 12, 10, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 4),
            child: CustomTitleText(title: test.title),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: test.tagColor.withOpacity(0.1),
                ),
                child: Text(
                  test.tag,
                  style: TextStyle(
                    color: test.tagColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 5),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12.withOpacity(0.03),
                ),
                child: Row(
                  children: [
                    Icon(Icons.access_time, color: MyColors.redColor, size: 14),
                    Text(
                      '${test.time.inDays}d:${test.time.inHours % 24}Hr',
                      style: TextStyle(
                        color: MyColors.redColor,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    //here
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
