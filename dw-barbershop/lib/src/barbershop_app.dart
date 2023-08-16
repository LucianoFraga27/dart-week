// ignore_for_file: prefer_const_constructors

import 'package:dw_barbershop/src/future/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarberShopApp extends StatelessWidget {
  const BarberShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DW barbershop",
      routes: {'/': (_) => SplashPage()},
    );
  }
}
