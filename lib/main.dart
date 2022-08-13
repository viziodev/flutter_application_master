import 'package:flutter/material.dart';
import 'package:flutter_application_master/ui/constants.dart';
import 'package:flutter_application_master/ui/pages/home/home-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Master',
        theme: ThemeData(
            primaryColor: BbwConstantes.bbwPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
            textTheme: const TextTheme(
                bodyText1: TextStyle(
                  color: BbwConstantes.bbwSecondaryColor,
                ),
                bodyText2: TextStyle(
                  color: BbwConstantes.bbwSecondaryColor,
                ))),
        home: const HomePage());
  }
}
