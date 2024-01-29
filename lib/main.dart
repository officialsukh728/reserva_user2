import 'package:flutter/material.dart';
import 'package:reserva_user/sacreen_all/home/homePage.dart';
import 'package:reserva_user/sacreen_all/login/logo.dart';
import 'package:reserva_user/utils/AppConfig.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reserva_user",
      home: HomePage(),
    );
  }
}
