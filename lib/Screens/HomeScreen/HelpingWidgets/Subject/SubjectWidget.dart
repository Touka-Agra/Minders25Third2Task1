
import 'package:flutter/material.dart';

import '../../../../Classes/Subject.dart';
import '../../../../Customs/CustomTitleText.dart';
import '../../../../DummyData.dart';

class SubjectWidget extends StatelessWidget {
  const SubjectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitleText(title: "Subjects"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: GridView.builder(
                itemCount: DummyData.subjects.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 2.6,
                ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                itemBuilder: (context, index) {
                  Subject subject = DummyData.subjects[index];
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            subject.colors[0],
                            subject.colors[1],
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        subject.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
