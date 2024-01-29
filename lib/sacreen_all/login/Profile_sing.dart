import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva_user/sacreen_all/login/LoginScreen.dart';
import 'package:reserva_user/sacreen_all/login/Verification.dart';
import 'package:reserva_user/utils/ElevatedButton.dart';
import 'package:reserva_user/utils/TextField.dart';
import 'package:reserva_user/utils/onpush.dart';

class Profile_Sing extends StatelessWidget {
  const Profile_Sing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text(
              "Skip",
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff474747),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Set Up Your Profile!",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  height: 35 / 24,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "First Name",
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Last Name",
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
              child: AppTextField(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Phone",
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
              child: AppTextField(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "E-mail",
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
              child: AppTextField(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Password",
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(CupertinoIcons.eye_slash)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Confirm password",
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(CupertinoIcons.eye_slash)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    child: Image(
                      image: AssetImage(
                        "assets/image_logo/Group 1171275006.png",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "I have read and agree to the Privacy Policy and Terms and\nConditions",
                    style: const TextStyle(
                      fontFamily: "Jost",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            AppBtn(
              title: "Continue",
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 26 / 18,
              ),
              onPressed: () {
                pushTo(context, Verification());
              },
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Account?",
                    style: const TextStyle(
                      fontSize: 16,
                      height: 23 / 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  InkWell(
                    child: Text(
                      " Log in",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffbd8d46),
                        height: 23 / 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onTap: () {
                      pushTo(context, LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
