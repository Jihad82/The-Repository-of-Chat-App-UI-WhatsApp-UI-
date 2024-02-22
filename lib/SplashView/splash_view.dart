import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mywhatsapp/HomeView/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const HomeView();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 80,
          height: 100,
        ),
      ),
    );
  }
}
