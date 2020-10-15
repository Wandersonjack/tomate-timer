import 'package:flutter/material.dart';
import 'package:tomate/screens/home_screen.dart';
import 'package:tomate/utilities/styles_utilities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: HomeScreen(),
    );
  }
}