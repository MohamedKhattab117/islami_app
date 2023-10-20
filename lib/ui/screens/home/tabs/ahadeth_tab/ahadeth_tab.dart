import 'package:flutter/material.dart';
import 'package:islami_app/models/details_screen_args.dart';
import 'package:islami_app/ui/screens/details_screen/details_screen.dart';
import 'package:islami_app/ui/utlis/app_assets.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';
import 'package:islami_app/ui/utlis/app_thems.dart';

// ignore: must_be_immutable
class AhadeatTab extends StatelessWidget {
  AhadeatTab({super.key});
  List ahadethNames = List.generate(50, (index) {
    return "الحديث رقم${index + 1}";
  });
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
              AppAssets.ahadethTabLogo,
            ),
          ),
          const Divider(
            thickness: 3,
            color: Appcolors.pramiry,
          ),
          const Text(
            "Hadeth Name",
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
              itemCount: ahadethNames.length,
              itemBuilder: (_, index) => TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: DetailsScreenArgs(
                        suraOrHadethName: ahadethNames[index],
                        fileName: "h${index + 1}.txt",
                        isQuran: false),
                  );
                },
                child: Text(
                  ahadethNames[index],
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
