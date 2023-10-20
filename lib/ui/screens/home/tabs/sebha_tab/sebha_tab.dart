import 'package:flutter/material.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.accent,
      body: Center(
        child: Text("Sebha Tab"),
      ),
    );
  }
}
