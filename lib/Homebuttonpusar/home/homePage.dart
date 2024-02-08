import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/card_alll/home_card_sacreen.dart';
import 'package:reserva_user/card_home/home_card_sacreen.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';
import 'package:reserva_user/sacreen_all/home/see_all_push.dart';
import 'package:reserva_user/utils/AppConfig.dart';
import 'package:reserva_user/utils/helper.dart';
import 'package:reserva_user/utils/onpush.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 14.h),
                      child: Image(
                        image: AssetImage(
                          "assets/home_icons/Group 1686552576.png",
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      "Hii Norma",
                      style: TextStyle(
                        fontFamily: "Jost",
                        fontSize: 18.sp,
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
                          padding: EdgeInsets.only(left: 26.w),
                          child: Icon(
                            Icons.location_pin,
                          ),
                        ),
                        Text(
                          "Brookhaven",
                          style: TextStyle(
                            fontFamily: "Jost",
                            fontSize: 11.sp,
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
                        Badge(
                          child: Icon(
                            CupertinoIcons.bell_fill,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: "Restaurant name, cuisine or dish....",
                      hintStyle: TextStyle(
                        fontFamily: "Jost",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Row(
                    children: [
                      Text(
                        "Discover Cuisines For",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Spacer(),
                      InkWell(
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontFamily: "Jost",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffbd8d46),
                            height: 17 / 12,
                          ),
                          textAlign: TextAlign.end,
                        ),onTap: () {
                          pushTo(context, SeeAll());
                        },
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int a = 0; a <= 9; a++)
                        Padding(
                          padding: EdgeInsets.all(4.w),
                          child: Container(
                            height: 50.h,
                            width: 105.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/home_display/Rectangle 382.png'),
                                // Replace with your image asset
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.7),
                                  // Adjust opacity to control darkness
                                  BlendMode.darken,
                                ),
                              ),
                            ),
                            child: Center(
                              // Your other widgets go here
                              child: Text(
                                'American',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Text(
                        "Popular Restaurant",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: "Jost",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffbd8d46),
                        height: 17 / 12,
                      ),
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
                for (int index = 0; index < 10; index++)
                  CardHome(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
