import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*Color primaryColor = const Color.fromRGBO(74, 55, 128, 1.000);
    Color bodyColor = const Color.fromRGBO(27, 27, 29, 1.000);
    Color neutralColor = const Color.fromRGBO(255, 255, 255, 1.000);
    Color borderColor = const Color.fromRGBO(231, 226, 243, 1.000);*/
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
