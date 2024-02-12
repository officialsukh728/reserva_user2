import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';
import 'package:reserva_user/utils/AppConfig.dart';
import 'package:reserva_user/utils/helper.dart';


class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (BuildContext context, CounterProvider value, Widget? child) {

        return Column(
          children: [
            for (int index = 0; index < value.count; index++)
              Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 200.h,
                            width: AppConfig.width,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.r),
                                topRight: Radius.circular(20.r),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.r),
                                topRight: Radius.circular(20.r),
                              ),
                              child: Image.asset(
                                "assets/home_display/homeImage.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10.h,
                            right: 10.w,
                            child: Container(
                              width: 61.w,
                              height: 16.h,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                              child: Center(
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Open',
                                    style: TextStyle(
                                      color: const Color(0xFF07C303),
                                      fontSize: 9.sp,
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: ' 1 miles',
                                          style: TextStyle(
                                            color: const Color(0xFF9D9D9D),
                                            fontSize: 8.sp,
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10.h,
                            left: 20.w,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              height: 35.15.h,
                              decoration: ShapeDecoration(
                                color: Colors.white
                                    .withOpacity(0.8100000023841858),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.90),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Image(
                                    image: AssetImage(
                                      "assets/home_display/Vector.png",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 14.707317352294922.w,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff000000),
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10.h,
                            right: 20.w,
                            child: Container(
                              width: 29.w,
                              height: 29.h,
                              decoration: ShapeDecoration(
                                color:
                                    Colors.white.withOpacity(0.800000011920929),
                                shape: const OvalBorder(),
                              ),
                              child: Center(
                                child: InkWell(
                                  child: const Icon(
                                    Icons.favorite,
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Madlyan Restaurant ",
                                style:  TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 14.w,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff000000),

                                ),
                                textAlign: TextAlign.start,
                              ).allPadding(10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 25.w,
                                  ).only(left: 10.w, right: 10.w),
                                  Text(
                                    "#4211 Cherry Manhattan, New York",
                                    style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 11.w,
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xff777777),

                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ).only(left: 10.h),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Available ",
                                style:  TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff07c303),
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ).only(bottom: 10.h),
          ],
        );
      },
    );
  }
}
// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs


