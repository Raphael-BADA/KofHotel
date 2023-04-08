import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';
import '../Components/components.dart';
import '../data/data.dart';

class RoomListScreen extends StatefulWidget {
  const RoomListScreen({super.key});

  @override
  State<RoomListScreen> createState() => _RoomListScreenState();
}

class _RoomListScreenState extends State<RoomListScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Header(),
              //ROOM LIST CONTAINER
              //ROOM LIST CONTAINER
              //ROOM LIST CONTAINER
              Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.83,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: (MediaQuery.of(context).size.width * 0.1),
                    ),
                    child: ListView(
                      children: [
                        for (var i = 0; i < roomList.length - 1; i++)
                          RoomInfoComponent(
                            room: roomList[i],
                          ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.10,
                        )
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
