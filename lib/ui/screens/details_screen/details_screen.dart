import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/details_screen_args.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';
import 'package:islami_app/ui/utlis/app_thems.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  static const routeName = "details_screen";

  DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late DetailsScreenArgs arguments;

  String fileContent = "";

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute.of(context)!.settings.arguments as DetailsScreenArgs;

    if (fileContent.isEmpty) {
      readFile();
    }
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
            arguments.suraOrHadethName,
            style: AppTheme.appBarTitleTextStyle,
          ),
        ),
        body: fileContent.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      fileContent,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Appcolors.accent,
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void readFile() async {
    String file = await rootBundle.loadString(arguments.isQuran
        ? "assets/files/quran/${arguments.fileName}"
        : "assets/files/ahadeth/${arguments.fileName}");
    fileContent = file;

    List<String> fileLines = file.split("\n");
    for (int i = 0; i < fileLines.length; i++) {
      fileLines[i] += arguments.isQuran ? "(${i + 1})" : " ";
    }
    fileContent = fileLines.join();
    setState(() {});
  }
}
