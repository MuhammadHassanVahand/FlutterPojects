import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_ui_design/constant/appColors.dart';
import 'package:uber_ui_design/screens/home/account.dart';
import 'package:uber_ui_design/screens/home/activity.dart';
import 'package:uber_ui_design/screens/home/home.dart';
import 'package:uber_ui_design/screens/home/sevices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  final List<Widget> screens = [
    Home(),
    Services(),
    Activity(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: selectIndex,
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          },
          unselectedItemColor: AppColors.black20,
          showUnselectedLabels: true,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: SvgPicture.asset(
                "assets/images/icon-services.svg",
                color: selectIndex == 1 ? AppColors.black : AppColors.black20,
              ),
              label: "Services",
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: SvgPicture.asset(
                "assets/images/icon-activity.svg",
                color: selectIndex == 2 ? AppColors.black : AppColors.black20,
                // ignore: deprecated_member_use
              ),
              label: "Activity",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
