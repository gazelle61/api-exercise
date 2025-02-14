// ignore_for_file: prefer_const_constructors

import 'package:apirashika/binding/binding.dart';
import 'package:apirashika/login/login_view.dart';
import 'package:apirashika/pages/bottom_nav.dart';
import 'package:apirashika/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: 'splash_screen',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
        GetPage(
            name: '/bottomnav', page: () => BottomNav(), binding: MyBindings()),
      ],
    );
  }
}
