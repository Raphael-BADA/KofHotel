import 'package:flutter/material.dart';
import 'package:kof_hotel/screens/detail_screen.dart';
import 'package:kof_hotel/widgets/widgets.dart';

import '../colors.dart';
import '../models/models.dart';

class RoomInfoComponent extends StatefulWidget {
  const RoomInfoComponent({required this.room, super.key});
  final Room room;
  @override
  State<RoomInfoComponent> createState() => _RoomInfoComponentState();
}

class _RoomInfoComponentState extends State<RoomInfoComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Banner(
                message: widget.room.category.type.toUpperCase(),
                location: BannerLocation.topStart,
                color: green,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) =>
                                DetailScreen(id: widget.room.id)),
                          ),
                        );
                      },
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.room.imagePath),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 5,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: green,
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${widget.room.price} USD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.25,
            //   color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.room.name,
                    style: TextStyle(
                      color: green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.room.name} is A nice room at a good price',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '${widget.room.distance} from Agoè',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  StarsWidget(rating: widget.room.rating),
                  ReviewersAvatarWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
