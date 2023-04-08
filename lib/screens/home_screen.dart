import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ListTile(
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: AssetImage('assets/users/si.jpg'),
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
                  Container(
                    width: MediaQuery.of(context).size.width - 15,
                    height: MediaQuery.of(context).size.width * 0.8,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var i = 0; i < roomList.length; i++)
                          Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      //  color: green,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: Image(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        roomList[i].imagePath)),
                                              ),
                                            ),
                                            Positioned(
                                              top: 35,
                                              right: 20,
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      roomList[i].name,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.favorite,
                                                      color: yellow,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                    '${roomList[i].price} USD per night',
                                                    style: TextStyle()),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
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
                        Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width - 15,
                height: MediaQuery.of(context).size.width * 0.45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = 1; i < roomList.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.45,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(roomList[13 - i].imagePath)),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
