import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';
import 'package:reserva_user/utils/AppConfig.dart';
import 'package:reserva_user/utils/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (BuildContext context, CounterProvider value, Widget? child) {
        return Consumer<CounterProvider>(
          builder:
              (BuildContext context, CounterProvider value, Widget? child) {
            return Column(
              children: [
                Card(
                  elevation: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170.h,
                            width: 160.w,
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
                                "assets/home_display/Rectangle 381.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8.h,
                            left: 10.w,
                            child: Container(
                              width: 46,
                              height: 22.15.h,
                              decoration: ShapeDecoration(
                                color: Colors.white
                                    .withOpacity(0.8100000023841858),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.90),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/home_display/Vector.png",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Center(
                                    child: Text(
                                      "4.9",
                                      style: TextStyle(
                                        fontSize: 9.255554411,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000),
                                      ),
                                    ),
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
                                shape: CircleBorder(),
                              ),
                              child: Center(
                                child: InkWell(
                                  child: Icon(
                                    color: Colors.red,
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
                                style: TextStyle(
                                  fontFamily: "Jost",
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),

                              ).pOnly(left: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 18,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Text(
                                    "#4211 Cherry Manhattan, New York",
                                    style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 9,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
