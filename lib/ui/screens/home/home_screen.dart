import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home/tabs/ahadeth_tab/ahadeth_tab.dart';
import 'package:islami_app/ui/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/ui/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/ui/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/ui/utlis/app_assets.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';
import 'package:islami_app/ui/utlis/app_thems.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    AhadeatTab(),
    SebhaTab(),
    RadioTab(),
  ];

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
        body: tabs[currentTabIndex],
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: ThemeData(canvasColor: Appcolors.pramiry),
        child: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (index) {
            currentTabIndex = index;
            setState(() {});
          },
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
}
