import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/Homebuttonpusar/Favorite.dart';
import 'package:reserva_user/Homebuttonpusar/home/Booking.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';
import 'package:reserva_user/utils/onpush.dart';

import '../Homebuttonpusar/home/homePage.dart';

import 'package:velocity_x/velocity_x.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final iconsList = [
    Icons.home,
    Icons.favorite_border_rounded,
    Icons.headset_mic_outlined,
    CupertinoIcons.profile_circled,
  ];
  final iconsLists = [
    Text("Home", style: TextStyle(color: Colors.deepOrangeAccent)),
    Text("Favorite", style: TextStyle(color: Colors.deepOrangeAccent)),
    Text("support", style: TextStyle(color: Colors.deepOrangeAccent)),
    Text("Profile", style: TextStyle(color: Colors.deepOrangeAccent)),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardBottomNavigationProvider>(
      builder: (BuildContext context, consumer, Widget? child) {
        return Scaffold(
          body: IndexedStack(
            index: consumer.activeIndex,
            children: [
              HomePage(),
              Favorite(),
              Scaffold(
                  appBar: AppBar(
                backgroundColor: Colors.cyan,
              )),
              Scaffold(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    "assets/image_logo/booking imge.png",
                  ),
                ),
                Text(
                  "Booking",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 7,
                  ),
                )
              ],
            ),
            onPressed: () {pushTo(context, Booking());},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: iconsList.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? Colors.deepOrangeAccent : Colors.black54;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconsList[index],
                    size: 24,
                    color: color,
                  ),
                  const SizedBox(height: 4),
                  iconsLists[index],
                ],
              );
            },
            // ... rest of your AnimatedBottomNavigationBar configuration

            activeIndex: consumer.activeIndex,
            splashSpeedInMilliseconds: 300,
            notchSmoothness: NotchSmoothness.defaultEdge,
            gapLocation: GapLocation.center,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            onTap: (index) => consumer.onTap(index),
            shadow: const BoxShadow(
              blurRadius: 5,
              spreadRadius: 0.5,
            ),
          ),
        );
      },
    );
  }
}
