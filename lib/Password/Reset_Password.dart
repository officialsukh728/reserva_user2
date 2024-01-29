import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva_user/sacreen_all/login/LoginScreen.dart';
import 'package:reserva_user/utils/ElevatedButton.dart';
import 'package:reserva_user/utils/onpush.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Reset Password",
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
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "New Password",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                  height: 20 / 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                  suffix: const Icon(CupertinoIcons.eye_slash),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Confirm Password",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                  height: 20 / 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                  suffix: const Icon(CupertinoIcons.eye_slash),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            AppBtn(
              title:
              "Continue",
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xfff7f5f5),
             
              ),
        
        
              onPressed: () {
                pushTo(context, LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
