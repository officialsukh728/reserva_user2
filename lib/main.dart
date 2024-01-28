import 'package:flutter/material.dart';
import 'package:reserva_user/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reserva_user",
      home: LogoSacreen(),
    );
  }
}
