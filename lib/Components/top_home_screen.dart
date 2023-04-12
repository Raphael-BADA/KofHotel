import 'package:flutter/material.dart';

import '../colors.dart';
import '../data/data.dart';
import '../screens/screens.dart';

class TopHomeScreen extends StatefulWidget {
  TopHomeScreen({Key? key}) : super(key: key);

  @override
  _TopHomeScreenState createState() => _TopHomeScreenState();
}

class _TopHomeScreenState extends State<TopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: ((context) =>
                                          DetailScreen(id: roomList[i].id)),
                                    ),
                                  );
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage(roomList[i].imagePath)),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 35,
                                right: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 7, 73, 10),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          roomList[i].name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
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
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
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
    );
  }
}
