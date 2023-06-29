import 'package:flutter/material.dart';
import 'package:kof_hotel/screens/screens.dart';
import 'package:kof_hotel/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
 /*  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(); */
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
      title: 'KOFHOTEL',
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
