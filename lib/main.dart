import 'package:flutter/material.dart';
import 'package:widgetpractice/Screens/basescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_constructors
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.white, elevation: 0)),
      debugShowCheckedModeBanner: false,
      title: 'Online Banking App',
      home: basescreeN(),
    );
  }
}
