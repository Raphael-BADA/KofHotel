import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MaterialColor primaryColor = const MaterialColor(0xFF14322D, {
    50: Color.fromRGBO(20, 50, 45, .1),
    100: Color.fromRGBO(20, 50, 45, .2),
    200: Color.fromRGBO(20, 50, 45, .3),
    300: Color.fromRGBO(20, 50, 45, .4),
    400: Color.fromRGBO(20, 50, 45, .5),
    500: Color.fromRGBO(20, 50, 45, .6),
    600: Color.fromRGBO(20, 50, 45, .7),
    700: Color.fromRGBO(20, 50, 45, .8),
    800: Color.fromRGBO(20, 50, 45, .9),
    900: Color.fromRGBO(20, 50, 45, 1),
  });
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
        fontFamily: 'MyFont',
        brightness: Brightness.light,
      ),
      home: HomeScreen(),
    );
  }
}
