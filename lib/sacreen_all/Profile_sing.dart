import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          ),Text(
            "First Name",
            style: const TextStyle(
              fontFamily: "Jost",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff777777),
              height: 20/14,
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
