import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vibra/constants/images.dart';
import 'package:vibra/modules/dashboard/dashboard_screen.dart';
import './widgets/group_chat_button.dart';
import '/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    DashboardScreen(),
    const Center(child: Text(Strings.search, style: TextStyle(color: Colors.white))),
    const Center(child: Text(Strings.chats, style: TextStyle(color: Colors.white))),
    const Center(child: Text(Strings.profile, style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Colors.transparent,
        color: AppColors.secondaryBackground,
        buttonBackgroundColor: AppColors.secondaryBackground,
        height: 70,
        animationCurve: Curves.linear,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          _buildIcon(Images.dashboard, isSelected: _currentIndex == 0),
          _buildIcon(Images.search, isSelected: _currentIndex == 1),
          _buildIcon(Images.chats, isSelected: _currentIndex == 2),
          _buildIcon(Images.profile, isSelected: _currentIndex == 3),
        ],
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }

  Widget _buildIcon(String iconPath, {required bool isSelected}) {
    return Padding(
      padding: !isSelected
          ? const EdgeInsets.only(top: 15)
          : const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 40,
            color: isSelected
                ? AppColors.primaryComponent
                : AppColors.primaryLightText,
          ),
        ],
      ),
    );
  }
}
