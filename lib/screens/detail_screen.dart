import 'package:flutter/material.dart';
import 'package:kof_hotel/screens/booking_screen.dart';

import '../colors.dart';
import '../data/data.dart';
import '../widgets/widgets.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({required this.id, super.key});
  final int id;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/hotel/bg.jpeg'),
              ),
            ),
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: ListTile(
                      leading: InkWell(
                        onTap: Navigator.of(context).pop,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage('assets/users/si.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'KOFHOTEL',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: green),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: green.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.2,
                    ),
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.1),
                                child: Text(
                                  roomList[widget.id - 1].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              StarsWidget(
                                  rating: roomList[widget.id - 1].rating),
                              Text('${roomList[widget.id - 1].rating} Stars'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ReviewersAvatarWidget(
                                color: green,
                              ),
                              Text('${roomList[widget.id - 1].reviews} Reviews')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                    '${roomList[widget.id - 1].description}',
                                    style: TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.1),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Read More',
                                      style: TextStyle(
                                        color: yellow,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationStyle:
                                            TextDecorationStyle.double,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Icon(color: yellow, Icons.alarm),
                          Text('Time'),
                        ]),
                        Column(children: [
                          Icon(color: yellow, Icons.pool),
                          Text('Pool'),
                        ]),
                        Column(children: [
                          Icon(color: yellow, Icons.wifi),
                          Text('Wifi'),
                        ]),
                        Column(children: [
                          Icon(color: yellow, Icons.local_pizza),
                          Text('Food'),
                        ]),
                        Column(children: [
                          Icon(color: yellow, Icons.sports_gymnastics),
                          Text('Gym'),
                        ]),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: ((context) => BookingScreen(
                                        room: roomList[widget.id - 1])),
                                  ),
                                );
                              },
                              child: Text(
                                'BOOK ROOM ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
