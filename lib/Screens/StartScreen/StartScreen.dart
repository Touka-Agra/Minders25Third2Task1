import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:task1/Core/MyPaths.dart';

import '../../Core/MyColors.dart';
import '../HomeScreen/HelpingWidgets/AppBar/MyAppBar.dart';
import '../HomeScreen/HomeScreen.dart';
import '../SubjectsScreen/SubjectsScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final List<TabItem> items = const [
    TabItem(icon: Icons.home_filled, title: 'Home'),
    TabItem(icon: Icons.menu_book_outlined, title: 'Subjects'),
    TabItem(icon: Icons.book_rounded, title: "FAQ's"),
  ];

  final List<Widget> screens = const [
    HomeScreen(),
    SubjectsScreen(),
    FAQScreen(),
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
      body: SingleChildScrollView(
        child: Stack(
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
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children:[
                    MyAppBar(itemColors: itemColors),
                    SizedBox(height: 15),
                
                    screens[selectedIndex],
                  ]
                )
              ),
            ),
          ],
        ),
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
