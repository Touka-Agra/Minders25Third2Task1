import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/Core/MyPaths.dart';

import '../../Core/MyColors.dart';
import '../HomeScreen/HelpingWidgets/AppBar/MyAppBar.dart';
import '../HomeScreen/HomeScreen.dart';
import '../SubjectsScreen/SubjectsScreen.dart';
import 'package:iconly/iconly.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final List<TabItem> items = [
    const TabItem(icon: IconlyBold.home, title: 'Home'),
    TabItem(icon: CupertinoIcons.book, title: 'Subjects'),
    const TabItem(icon: Icons.book_rounded, title: "FAQ's"),
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    SubjectsScreen(),
    const FAQScreen(),
  ];

  int selectedIndex = 0;
  bool isSubjectsScreen = false;

  @override
  Widget build(BuildContext context) {
    bool isSubjectsScreen = selectedIndex == 1;
    Color itemColors = isSubjectsScreen ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      extendBody: true,
      body: Stack(
        children: [
          if (isSubjectsScreen)
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                MyPaths.bgImage,
                fit: BoxFit.cover,
              ),
            ),

          SafeArea(
            child:screens[selectedIndex],

          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
        child: BottomBarFloating(
          borderRadius: BorderRadius.circular(30),
          items: items,
          backgroundColor: Colors.white,
          color: MyColors.grey,
          colorSelected: MyColors.bottomNavColor,
          indexSelected: selectedIndex,
          enableShadow: true,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
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
