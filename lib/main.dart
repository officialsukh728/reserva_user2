import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/dashboard/dashboard.dart';
import 'package:reserva_user/sacreen_all/home/homePage.dart';
import 'package:reserva_user/sacreen_all/home/see_all_push.dart';
import 'package:reserva_user/sacreen_all/login/logo.dart';
import 'package:reserva_user/utils/AppConfig.dart';

import 'logics/prociders/counter_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider<CounterProvider>(
            create: (_) => CounterProvider(),
          ),
          ChangeNotifierProvider<DashboardBottomNavigationProvider>(
            create: (_) => DashboardBottomNavigationProvider(),
          )
        ],
        child: MaterialApp(
          theme: ThemeData().copyWith(
            backgroundColor: Colors.white,
            primaryColor: Colors.green,
          ),
          debugShowCheckedModeBanner: false,
          title: "Reserva User",
          home: Dashboard(),
        ),
      ),
    );
  }
}
