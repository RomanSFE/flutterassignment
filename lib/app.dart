import 'package:flutter/material.dart';
import 'package:flutterassignment/details.dart';
import 'package:flutterassignment/home.dart';
import 'package:flutterassignment/livetest.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 245, 239),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 247, 245, 239),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LiveTest(),
        '/stackAndProgress': (context) => Details(),
        '/homePage': (context) => Home(),
      },
    );
  }
}