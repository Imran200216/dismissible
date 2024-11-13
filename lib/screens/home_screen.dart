import 'package:dismissible/constants/colors.dart';
import 'package:dismissible/screens/tab_bar_screens/hotels_tab_bar_screen.dart';
import 'package:dismissible/screens/tab_bar_screens/trips_tab_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.appBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.appBarBgColor,

          /// list icon
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 28,
              color: AppColors.appBarIconColor,
              Icons.list,
            ),
          ),

          /// title
          title: const Text("Bookings"),

          /// title text style
          titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: const Color(0xFFF33280),
          ),

          /// actions
          actions: [
            /// notification
            IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 28,
                color: AppColors.appBarIconColor,
                Icons.notifications_outlined,
              ),
            ),

            /// search
            IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 28,
                color: AppColors.appBarIconColor,
                Icons.search,
              ),
            ),
          ],

          /// tab bar
          bottom: TabBar(
            labelColor: const Color(0xFFF33280),
            unselectedLabelColor: AppColors.appBarIconColor,
            indicatorColor: const Color(0xFFF33280),
            labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            tabs: const [
              Tab(child: Text("Trips")),
              Tab(child: Text("Hotels")),
            ],
          ),
        ),

        /// tab bar view
        body: const TabBarView(
          children: [
            TripsTabBarScreen(),
            HotelsTabBarScreens(),
          ],
        ),
      ),
    );
  }
}
