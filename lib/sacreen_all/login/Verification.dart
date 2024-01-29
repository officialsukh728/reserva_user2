import 'package:flutter/material.dart';
import 'package:reserva_user/utils/onpush.dart';

import '../home/homePage.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verification ",
          style: const TextStyle(
            fontFamily: "Jost",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
            height: 29 / 20,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Please Enter the 4-digit Verification Code\n Sent to johnsmith@gmail.com",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff777777),
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int a = 0; a < 4; a++)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              child: Text(
                "(35 Sec)",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8f8f8f),
                  height: 20 / 14,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                pushTo(context, HomePage());
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Didn’t receive OTP?",
                  style: const TextStyle(
                    fontFamily: "Jost",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff777777),
                    height: 20 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              InkWell(
                child: Text(
                  "Resend",
                  style: const TextStyle(
                    fontFamily: "Jost",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffbd8d46),
                    height: 26 / 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                onTap: () {
                  pushReplacement(context, Verification());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
