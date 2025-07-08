import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../Core/MyColors.dart';
import '../HomeScreen/HomeScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<TabItem> items = [
    TabItem(icon: Icons.home_filled, title: 'Home'),
    TabItem(icon: Icons.menu_book_outlined, title: 'Subjects'),
    TabItem(icon: Icons.book_rounded, title: "FAQ's"),
  ];

  List<Widget> screens = [HomeScreen(), SubjectsScreen(), FAQScreen()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 0, 12, 12),
        child: BottomBarFloating(
          borderRadius: BorderRadius.circular(30),
          items: items,
          backgroundColor: Colors.white,
          color: MyColors.grey,
          colorSelected: MyColors.bottomNavColor,
          indexSelected: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: screens[selectedIndex],
        ),
      ),
    );
  }
}

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

