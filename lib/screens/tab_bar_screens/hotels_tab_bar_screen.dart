import 'package:dismissible/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HotelsTabBarScreens extends StatefulWidget {
  const HotelsTabBarScreens({super.key});

  @override
  State<HotelsTabBarScreens> createState() => _HotelsTabBarScreensState();
}

class _HotelsTabBarScreensState extends State<HotelsTabBarScreens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/images/lottie/no-hotels-animation.json",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "No hotels found!",
              style: GoogleFonts.poppins(
                color: AppColors.listTileSubTitleTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
