import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
        ),
        home: SplashView(),
      ),
    );
  }
}
