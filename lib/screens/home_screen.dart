import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kof_hotel/Components/bottom_home_screen.dart';
import 'package:kof_hotel/Components/top_home_screen.dart';
import 'package:kof_hotel/screens/welcome_screen.dart';
import 'package:kof_hotel/screens/room_list_screen.dart';

import '../colors.dart';
import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              ListTile(
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: green,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image(
                        image: AssetImage('assets/users/si.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Available Room',
                          style: TextStyle(
                              color: green,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TopHomeScreen(),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Rooms',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => RoomListScreen())));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 7, 73, 10),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 25,
                              ),
                              child: Text(
                                'See all',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              HomeScreenBottom(),
            ],
          ),
        ),
      )),
    );
  }
}
