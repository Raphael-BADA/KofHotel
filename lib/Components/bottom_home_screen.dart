import 'package:flutter/material.dart';

import '../data/data.dart';
import '../screens/screens.dart';

class HomeScreenBottom extends StatefulWidget {
  HomeScreenBottom({Key? key}) : super(key: key);

  @override
  _HomeScreenBottomState createState() => _HomeScreenBottomState();
}

class _HomeScreenBottomState extends State<HomeScreenBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 15,
      height: MediaQuery.of(context).size.width * 0.45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var i = 1; i < roomList.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => DetailScreen(id: roomList[i].id)),
                    ),
                  );
                },
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
            ),
        ],
      ),
    );
  }
}
