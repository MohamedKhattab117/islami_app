import 'package:flutter/material.dart';
import 'package:islami_app/ui/utlis/app_assets.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';
import 'package:islami_app/ui/utlis/app_thems.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Appcolors.transparent,
        appBar: AppBar(
          backgroundColor: Appcolors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Islami",
            style: AppTheme.appBarTitleTextStyle,
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }
}

Widget buildBottomNavigationBar() => Theme(
      data: ThemeData(canvasColor: Appcolors.pramiry),
      child: BottomNavigationBar(
        selectedItemColor: Appcolors.accent,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.icQuran),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppAssets.icAhadeth),
              ),
              label: "Ahadeath"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppAssets.icSebha),
              ),
              label: "Sebha"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppAssets.icRadio),
              ),
              label: "Radio"),
        ],
      ),
    );
