// ignore_for_file: prefer_const_constructors

import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:dw_barbershop/src/core/ui/barbershop_theme.dart';
import 'package:dw_barbershop/src/core/ui/widgets/barbershop_loader.dart';
import 'package:dw_barbershop/src/future/splash/auth/login/login_page.dart';
import 'package:dw_barbershop/src/future/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarberShopApp extends StatelessWidget {
  const BarberShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
        customLoader: BarbershopLoader(),
        builder: (asyncNavigatorObserver) {
          return MaterialApp(
            navigatorObservers: [asyncNavigatorObserver],
            title: "DW barbershop",
            theme: BarberShopTheme.themeData,
            routes: {
              '/': (_) => SplashPage(),
              '/auth/login': (_) => LoginPage()
            },
          );
        });
  }
}
