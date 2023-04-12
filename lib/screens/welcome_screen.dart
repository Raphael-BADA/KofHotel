import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:kof_hotel/screens/Auth/register_screen.dart';
import 'package:kof_hotel/screens/Auth/login_screen.dart';
import 'package:kof_hotel/screens/home_screen.dart';

import '../colors.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KOFHOTEL',
                        style: TextStyle(
                          fontSize: 40,
                          color: green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (var x = 0; x < 4; x++)
                              Stack(
                                children: [
                                  VerticalDivider(
                                    thickness: 2,
                                    width: 50,
                                    color: green,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.33,
            // left: MediaQuery.of(context).size.width * 0.05,
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.97,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: Center(child: Text('')),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.36,
            //  left: MediaQuery.of(context).size.width * 0.04,
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/hotel/bg.jpeg'),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green.withOpacity(0.9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) => LoginScreen()),
                                ),
                              );
                            },
                            child: Text(
                              'LET\'S YOU IN !!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    /*     Icon(BoxIcons.bxl_google),
          Icon(BoxIcons.bxl_apple),
          Icon(EvaIcons.twitter),
          Icon(EvaIcons.facebook), */
  }
}
