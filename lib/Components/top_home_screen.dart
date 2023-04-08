
// Container(
//                     width: MediaQuery.of(context).size.width - 15,
//                     height: MediaQuery.of(context).size.width * 0.8,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         for (var i = 0; i < roomList.length; i++)
//                           Column(
//                             children: [
//                               Container(
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 8.0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       //  color: green,
//                                       borderRadius: BorderRadius.circular(30),
//                                     ),
//                                     child: Column(
//                                       children: [
//                                         Stack(
//                                           children: [
//                                             Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width *
//                                                   0.7,
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .width *
//                                                   0.7,
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 child: Image(
//                                                     fit: BoxFit.cover,
//                                                     image: AssetImage(
//                                                         roomList[i].imagePath)),
//                                               ),
//                                             ),
//                                             Positioned(
//                                               top: 35,
//                                               right: 20,
//                                               child: Container(
//                                                 child: Row(
//                                                   children: [
//                                                     Text(
//                                                       roomList[i].name,
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 16,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                     Icon(
//                                                       Icons.favorite,
//                                                       color: yellow,
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width *
//                                               0.7,
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(8.0),
//                                                 child: Text(
//                                                     '${roomList[i].price} USD per night',
//                                                     style: TextStyle()),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                       ],
//                     ),
//                   ),