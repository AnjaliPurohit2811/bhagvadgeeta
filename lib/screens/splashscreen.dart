
import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('asset/img/b.png', fit: BoxFit.fill),
        ),
      ),
    );
  }
}
