import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Booking",
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Madlyan Restaurant ",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ).pOnly(
            left: 10,
            bottom: 3,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.red,
              ).pOnly(left: 5),
              Text("4211 Cherry Manhattan, New York")
            ],
          ),
          Container(
            width: 337.w,
            height: 196.h,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/vvvv.png",
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            border: Border.all()),
          )
        ],
      ),
    );
  }
}
