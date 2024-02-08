import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/Homebuttonpusar/Favorite.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';

import '../Homebuttonpusar/home/homePage.dart';

import 'package:velocity_x/velocity_x.dart';

class Dashboard extends StatelessWidget {

  Dashboard({super.key});

  final iconsList = [
    Icons.home,
    Icons.favorite,
    Icons.chair,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardBottomNavigationProvider>(
      builder: (BuildContext context, consumer, Widget? child) {
        return Scaffold(
          body: IndexedStack(index: consumer.activeIndex, children: [
            HomePage(),
            Favorite(),
            Scaffold(appBar: AppBar(backgroundColor: Colors.cyan,)),
            Scaffold(),
            Scaffold(),
          ]),
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            child: Icon(

              Icons.brightness_3,
            ),
            onPressed: () {consumer.onTap(2);},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: iconsList.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? Colors.deepOrangeAccent : Colors.black;
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
                ],
              );
            },
            // ... rest of your AnimatedBottomNavigationBar configuration

          activeIndex: consumer.activeIndex,
            splashSpeedInMilliseconds: 300,
            // notchSmoothness: NotchSmoothness.defaultEdge,
            gapLocation: GapLocation.center,
            // leftCornerRadius: 32,
            // rightCornerRadius: 32,
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
