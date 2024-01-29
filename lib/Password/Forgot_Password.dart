import 'package:flutter/material.dart';
import 'package:reserva_user/Password/One_Time_Password.dart';
import 'package:reserva_user/utils/ElevatedButton.dart';
import 'package:reserva_user/utils/TextField.dart';
import 'package:reserva_user/utils/onpush.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: const TextStyle(
            fontFamily: "Jost",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),

          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "We sent you a code to verify your account.",
                  style: const TextStyle(
                    fontFamily: "Jost",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff777777),
                    height: 23 / 16,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Email or Phone Number",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: AppTextField(),
            ),
            SizedBox(
              height: 70,
            ),AppBtn(title:
              "Continue",
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xfff7f5f5),
                height: 26/18,
              ),onPressed: () {
                pushTo(context, OneTimePassword());
              },
             )
          ],
        ),
      ),
    );
  }
}
