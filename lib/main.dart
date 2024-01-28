import 'package:flutter/material.dart';
import 'package:reserva_user/sacreen_all/logo.dart';
import 'package:reserva_user/utils/AppConfig.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reserva_user",
      home: LogoSacreen(),
    );
  }
}
