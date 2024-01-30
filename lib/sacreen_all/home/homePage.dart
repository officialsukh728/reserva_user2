import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';
import 'package:reserva_user/utils/AppConfig.dart';
import 'package:reserva_user/utils/helper.dart';

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
                Consumer<CounterProvider>(
                  builder: (BuildContext context, CounterProvider value,
                      Widget? child) {
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
                                          color: Colors.red,
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
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                          ),
                                          child: Center(
                                            child: Text.rich(
                                              TextSpan(
                                                text: 'Open',
                                                style: TextStyle(
                                                  color: Color(0xFF07C303),
                                                  fontSize: 9.sp,
                                                  fontFamily: 'Jost',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: ' 1 miles',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF9D9D9D),
                                                        fontSize: 8.sp,
                                                        fontFamily: 'Jost',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                              horizontal: 10.w, vertical: 10),
                                          height: 35.15.h,
                                          decoration: ShapeDecoration(
                                            color: Colors.white.withOpacity(
                                                0.8100000023841858),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.90),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Image(
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
                                                  fontSize: 14.707317352294922,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff000000),
                                                ),
                                                textAlign: TextAlign.left,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 20,
                                        child: Container(
                                          width: 29,
                                          height: 29,
                                          decoration: ShapeDecoration(
                                            color: Colors.white
                                                .withOpacity(0.800000011920929),
                                            shape: OvalBorder(),
                                          ),
                                          child: Center(
                                              child:
                                                  Icon(CupertinoIcons.heart)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Madlyan Restaurant ",
                                            style: const TextStyle(
                                              fontFamily: "Jost",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000),
                                              height: 20 / 14,
                                            ),
                                            textAlign: TextAlign.start,
                                          ).allPadding(10.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 25.sp,
                                              ).only(left: 10.w, right: 10.w),
                                              Text(
                                                "#4211 Cherry Manhattan, New York",
                                                style: TextStyle(
                                                  fontFamily: "Jost",
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color(0xff777777),
                                                  height: 16 / 11,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ).only(left: 10.h),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Available ",
                                            style: const TextStyle(
                                              fontFamily: "Jost",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff07c303),
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
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('increment_floatingActionButton'),
        onPressed: () => context.read<CounterProvider>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
