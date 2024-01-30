import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';
import 'package:reserva_user/sacreen_all/home/homePage.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final iconsList = [
    Icons.home,
    Icons.baby_changing_station,
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
            Scaffold(),
            Scaffold(),
            Scaffold(),
            Scaffold(),
          ]),
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            child: Icon(
              Icons.brightness_3,
            ),
            onPressed: () {
              consumer.onTap(2);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: iconsList.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? Colors.red : Colors.green;
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
