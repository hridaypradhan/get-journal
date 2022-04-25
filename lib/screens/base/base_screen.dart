import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../global/constants/colors.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../search/search_screen.dart';

class BaseScreen extends StatefulWidget {
  static const id = '/base_screen';
  final List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: kPrimaryGradient),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomBar(
            backgroundColor: kPrimaryBlue,
            items: [
              BottomBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 30.0,
                ),
                title: const Text('Home'),
                activeColor: Colors.white,
                inactiveColor: Colors.white,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.search,
                  size: 30.0,
                ),
                title: const Text('Search'),
                activeColor: Colors.white,
                inactiveColor: Colors.white,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.person,
                  size: 30.0,
                ),
                title: const Text('Profile'),
                activeColor: Colors.white,
                inactiveColor: Colors.white,
              ),
            ],
            onTap: (index) {
              setState(
                () {
                  _selectedIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
              );
            },
            selectedIndex: _selectedIndex,
          ),
          backgroundColor: Colors.transparent,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: widget.pages,
          ),
        ),
      ),
    );
  }
}
