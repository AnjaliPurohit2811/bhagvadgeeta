import 'package:bhagvadgeeta/screens/aarti.dart';
import 'package:bhagvadgeeta/screens/geetamahatmay.dart';
import 'package:bhagvadgeeta/screens/geetasar.dart';
import 'package:bhagvadgeeta/screens/geetascreen.dart';
import 'package:bhagvadgeeta/screens/homescrren.dart';
import 'package:bhagvadgeeta/screens/shlok.dart';
import 'package:bhagvadgeeta/screens/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
       '/home': (context) => HomeScreen(),
      '/saar': (context) => Saar(),
      '/mahatmay': (context) => GeetaMahatmay(),
       '/aarti': (context) => AartiScreen(),
      '/shloks': (context) => Shlok(),
       '/geeta': (context) => BhagavadGeeta(),


    },
  ));
}
