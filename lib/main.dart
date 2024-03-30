import 'package:dollarpos/routes/RoutesOfApp.dart';
import 'package:dollarpos/view/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(350, 680),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesOfApp.genRoutes,
          title: 'Dollar Pos',
          theme: ThemeData(
            fontFamily: 'default',
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xff90330E),
                onSecondary: const Color(0xff90330E),
                onPrimary: const Color(0xffF15A2C)),
            useMaterial3: true,
          ),
          home: const LoginPage(),
        );
      },
    );
  }
}
