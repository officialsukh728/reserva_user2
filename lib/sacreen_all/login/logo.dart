import 'package:flutter/material.dart';
import 'package:reserva_user/sacreen_all/login/LoginScreen.dart';
import 'package:reserva_user/utils/ElevatedButton.dart';

class LogoSacreen extends StatefulWidget {
  const LogoSacreen({super.key});

  @override
  State<LogoSacreen> createState() => _LogoSacreenState();
}

class _LogoSacreenState extends State<LogoSacreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage(
                  "assets/image_logo/logo.png",
                ),
              ),
            ),
            AppBtn(
              title: "Login",
              style: const TextStyle(
                fontFamily: "Jost",
                fontSize: 18.88669776916504,
                fontWeight: FontWeight.w600,
                color: Color(0xff010100),
                height: 27 / 18.88669776916504,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
