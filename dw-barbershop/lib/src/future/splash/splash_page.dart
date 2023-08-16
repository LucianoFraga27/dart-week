import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('abc'),
      ),
      body: Container(
          child: ElevatedButton(
              onPressed: () async {
                await Future.delayed(const Duration(seconds: 2)).asyncLoader();
              },
              child: Text("TextLoader"))),
    );
  }
}

// parei no minuto 19:16