import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserva_user/sacreen_all/Profile_sing.dart';
import 'package:reserva_user/utils/ElevatedButton.dart';
import 'package:reserva_user/utils/TextField.dart';
import 'package:reserva_user/utils/onpush.dart';

import '../utils/AppConfig.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Row(
          children: [
            Spacer(),
            Text(
              "Skip",
              style: TextStyle(
                fontFamily: "Jost",
                fontSize: 18.88669776916504,
                fontWeight: FontWeight.w400,
                color: Color(0xff474747),
                height: 27 / 18.88669776916504,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontFamily: "Jost",
                fontSize: 31.477828979492188,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                height: 45 / 31.477828979492188,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Please sign in to continue. ",
                style: TextStyle(
                  fontFamily: "Jost",
                  fontSize: 16.788175582885742,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                  height: 24 / 16.788175582885742,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Email or Phone Number",
                style: TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14.689654350280762,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                  height: 21 / 14.689654350280762,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: AppTextField(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                "Password",
                style: TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14.689654350280762,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                  height: 21 / 14.689654350280762,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
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
            const SizedBox(
              height: 4,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontSize: 13.64039421081543,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777777),
                      height: 20 / 13.64039421081543,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
            AppBtn(
              title: "Login",
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18.88669776916504,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              onPressed: () {
                pushTo(context, Profile_Sing());
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 3, width: 70, color: Color(0xffbd8d46)),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: Text(
                      "Or",
                      style: const TextStyle(
                        fontFamily: "Jost",
                        fontSize: 14.689654350280762,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7c7c7c),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 70,
                    color: Color(0xffbd8d46),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login with social media",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14.689654350280762,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffbd8d46),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      "assets/image_logo/google_icon-icons.com_62736 (1) 1.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      "assets/image_logo/Frame.png",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      "assets/image_logo/apple-logo 1.png",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don’t have an account? ",
            style: const TextStyle(
              fontSize: 16.788175582885742,
            ),
          ),
          TextButton(
            onPressed: () {
              pushTo(context, Profile_Sing());
            },
            child: Text(
              "Register",
              style: const TextStyle(
                color: Color(0xffbd8d46),
                fontSize: 16.788175582885742,
              ),
            ),
          )
        ],
      ),
    );
  }
}
