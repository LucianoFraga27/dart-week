import 'package:asyncstate/asyncstate.dart';
import 'package:dw_barbershop/src/future/splash/auth/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var _scale = 10.0;
  var _animationOpacityLogo = 0.0;

  double get _logoAnimationWidth => 100 * _scale;
  double get _logoAnimationHeigth => 120 * _scale;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _animationOpacityLogo = 1.0;
        _scale = 1.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: DecoratedBox(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/background_image_chair.jpg"),
            opacity: 0.2,
            fit: BoxFit.cover,
          )),
          child: Center(
            child: AnimatedOpacity(
                duration: const Duration(seconds: 3),
                curve: Curves.easeIn,
                opacity: _animationOpacityLogo,
                onEnd: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      PageRouteBuilder(
                          settings: RouteSettings(name: '/auth/login'),
                          pageBuilder:
                              ((context, animation, secondaryAnimation) =>
                                  LoginPage()),
                          transitionsBuilder: (_, animation, __, child) {
                            return FadeTransition(
                                opacity: animation, child: child);
                          }),
                      (route) => false);
                },
                child: AnimatedContainer(
                    width: _logoAnimationWidth,
                    height: _logoAnimationHeigth,
                    duration: const Duration(seconds: 3),
                    curve: Curves.linearToEaseOut,
                    child: Image.asset(
                      "assets/images/imgLogo.png",
                      fit: BoxFit.cover,
                    ))),
          ),
        ));
  }
}

// parei no minuto 19:16