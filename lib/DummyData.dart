import 'package:flutter/material.dart';
import 'package:task1/Classes/PendingTest.dart';

import 'Classes/Subject.dart';
import 'Core/MyPaths.dart';

class DummyData {
  static List<PendingTest> pendingTests = [
    PendingTest(
      title: "Law of Motion",
      tag: "Physics",
      time: Duration(days: 1, hours: 10),
      tagColor: Colors.purpleAccent,
    ),
    PendingTest(
      title: "Law of Motion",
      tag: "Chemistry",
      time: Duration(days: 1, hours: 10),
      tagColor: Colors.orangeAccent,
    ),
    PendingTest(
      title: "Law of Motion",
      tag: "Maths",
      time: Duration(days: 1, hours: 10),
      tagColor: Colors.indigo,
    ),
    PendingTest(
      title: "Law of Motion",
      tag: "Physics",
      time: Duration(days: 1, hours: 10),
      tagColor: Colors.purpleAccent,
    ),
  ];

  static List<Subject> subjects = [
    Subject(
      name: "Mathematics",
      colors: [Colors.blueAccent, Colors.deepPurple.shade400],
      path: MyPaths.maths,
    ),

    Subject(
      name: "Chemistry",
      colors: [Color(0XFFf23e61),Colors.orange],
      path: MyPaths.chemistry,
    ),

    Subject(
      name: "Physics",
      colors: [Colors.deepPurple.shade400, Colors.pink],
      path: MyPaths.physics,
    ),

    Subject(
      name: "Reasoning",
      colors: [Color(0XFFd79442), Color(0XFFcccccc)],
      path: MyPaths.reasoning,
    ),
  ];
}
