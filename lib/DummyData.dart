import 'package:flutter/material.dart';
import 'package:task1/Classes/PendingTest.dart';

class DummyData {
  static List<PendingTest> pendingTest = [
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


}
