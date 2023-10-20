import 'package:flutter/material.dart';
import 'package:islami_app/models/details_screen_args.dart';
import 'package:islami_app/ui/screens/details_screen/details_screen.dart';
import 'package:islami_app/ui/utlis/app_assets.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';
import 'package:islami_app/ui/utlis/app_thems.dart';
import 'package:islami_app/ui/utlis/constants.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              AppAssets.quranTabLogo,
            ),
          ),
          const Divider(
            thickness: 3,
            color: Appcolors.pramiry,
          ),
          const Text(
            "Sura Name",
            style: AppTheme.quranTabTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          const Divider(
            thickness: 3,
            color: Appcolors.pramiry,
          ),
          Expanded(
            flex: 7,
            child: ListView.builder(
              itemCount: Constants.suraNames.length,
              itemBuilder: (_, index) => TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: DetailsScreenArgs(
                        suraOrHadethName: Constants.suraNames[index],
                        fileName: "${index + 1}.txt",
                        isQuran: true),
                  );
                },
                child: Text(
                  Constants.suraNames[index],
                  textAlign: TextAlign.center,
                  style: AppTheme.quranTabTitleTextStyle.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
