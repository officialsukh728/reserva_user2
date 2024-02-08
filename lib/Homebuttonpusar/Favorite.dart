import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserva_user/card_alll/card_favorite.dart';
import 'package:reserva_user/card_alll/home_card_sacreen.dart';

import 'package:reserva_user/utils/AppConfig.dart';
import 'package:reserva_user/utils/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favorite",
          style: const TextStyle(
            fontFamily: "Jost",
            fontSize: 21.107009887695312,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
            height: 30 / 21.107009887695312,
          ),
          textAlign: TextAlign.left,
        ),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            for (int index = 0; index <= 5; index++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardFavorite().pOnly(bottom: 10,left: 7),
                  CardFavorite().pOnly(bottom: 10,right: 7),

                ],
              ), SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
