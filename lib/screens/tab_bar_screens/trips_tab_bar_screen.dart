import 'package:dismissible/components/custom_card.dart';
import 'package:dismissible/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TripsTabBarScreen extends StatefulWidget {
  const TripsTabBarScreen({super.key});

  @override
  State<TripsTabBarScreen> createState() => _TripsTabBarScreenState();
}

class _TripsTabBarScreenState extends State<TripsTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    /// card data information
    final List<Map<String, String>> cardData = [
      {
        "destinationPlace": "Australia",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Emirates Airways",
      },
      {
        "destinationPlace": "India",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Air India",
      },
      {
        "destinationPlace": "Paris",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Air France",
      },
      {
        "destinationPlace": "New York",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "American Airlines",
      },
      {
        "destinationPlace": "London",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "British Airways",
      },
      {
        "destinationPlace": "Tokyo",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Japan Airlines",
      },
      {
        "destinationPlace": "Dubai",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Emirates",
      },
      {
        "destinationPlace": "Singapore",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Singapore Airlines",
      },
      {
        "destinationPlace": "Hong Kong",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Cathay Pacific",
      },
      {
        "destinationPlace": "Rome",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Alitalia",
      },
      {
        "destinationPlace": "Berlin",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Lufthansa",
      },
      {
        "destinationPlace": "Dubai",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "FlyDubai",
      },
      {
        "destinationPlace": "Los Angeles",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Delta Airlines",
      },
      {
        "destinationPlace": "Rome",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Vueling Airlines",
      },
      {
        "destinationPlace": "Bangkok",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Thai Airways",
      },
      {
        "destinationPlace": "Moscow",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Aeroflot",
      },
      {
        "destinationPlace": "Cape Town",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "South African Airways",
      },
      {
        "destinationPlace": "Mexico City",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Aeromexico",
      },
      {
        "destinationPlace": "Seoul",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Korean Air",
      },
      {
        "destinationPlace": "Barcelona",
        "listIconName": "aeroplane-icon",
        "listSubTitleText": "Iberia",
      },
    ];

    return Container(
      margin: const EdgeInsets.all(20),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          final data = cardData[index];
          return Slidable(
            key: ValueKey(index),
            startActionPane: ActionPane(
              dismissible: DismissiblePane(
                onDismissed: () {},
              ),
              motion: const BehindMotion(),
              children: [
                /// share
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.share,
                  backgroundColor: AppColors.listTileIconColor,
                  borderRadius: BorderRadius.circular(12),
                  label: "SHARE",
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: const BehindMotion(),
              children: [
                /// delete
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.delete,
                  backgroundColor: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                  label: "DELETE",
                ),
              ],
            ),
            child: CustomCard(
              destinationPlace: data["destinationPlace"]!,
              listIconName: data["listIconName"]!,
              listSubTitleText: data["listSubTitleText"]!,
            ),
          );
        },
      ),
    );
  }
}
