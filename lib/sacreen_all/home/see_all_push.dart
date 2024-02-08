import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserva_user/card_alll/home_card_sacreen.dart';
import 'package:velocity_x/velocity_x.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Restaurants",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(width: 264.w,height: 50.h,
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        prefixIcon: Icon(Icons.search_rounded),
                        hintText: "Restaurant name, cuisine or dish....",
                        hintStyle: TextStyle(fontSize: 11,
                          fontFamily: "Jost",
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
                ).pOnly(left: 15),
               Icon(CupertinoIcons.arrow_up_arrow_down).pOnly(left: 8),
                Icon(CupertinoIcons.slider_horizontal_3).pOnly(left: 8)
              ],
            ),
            for (int index = 0; index <= 10; index++)
              CardHome().pOnly(left: 15, right: 15, bottom: 5),
          ],
        ),
      ),
    );
  }
}
