import 'package:dismissible/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String destinationPlace;
  final String listIconName;
  final String listSubTitleText;

  const CustomCard({
    super.key,
    required this.destinationPlace,
    required this.listIconName,
    required this.listSubTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        isThreeLine: false,
        leading: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.listTileIconBgColor,
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/images/svg/$listIconName.svg",
              height: 28,
              width: 28,
              color: AppColors.listTileIconColor,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.start,
              "Hawaii",
              style: GoogleFonts.poppins(
                color: AppColors.listTileTitleTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              "assets/images/svg/arrow-forward-icon.svg",
              height: 20,
              width: 12,
              color: AppColors.appBarIconColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                textAlign: TextAlign.start,
                destinationPlace,
                style: GoogleFonts.poppins(
                  color: AppColors.listTileTitleTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          listSubTitleText,
          style: GoogleFonts.poppins(
            color: AppColors.listTileSubTitleTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.more_vert,
          color: AppColors.listTileSubTitleTextColor,
        ),
      ),
    );
  }
}
