import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 14),
                    child: Image(
                      image: AssetImage(
                        "assets/home_icons/Group 1686552576.png",
                      ),
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    "Hii Norma",
                    style: const TextStyle(
                      fontFamily: "Jost",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Icon(
                          Icons.location_pin,
                        ),
                      ),
                      Text(
                        "Brookhaven",
                        style: const TextStyle(
                          fontFamily: "Jost",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Badge(child: Icon(CupertinoIcons.bell_fill)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
