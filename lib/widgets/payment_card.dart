import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  PaymentCard(
      {required this.cardColor,
      required this.textColor,
      required this.service,
      Key? key})
      : super(key: key);
  final Color cardColor;
  final Color textColor;
  final String service;
  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 20,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: widget.cardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.service,
                    style: TextStyle(
                        color: widget.textColor, fontWeight: FontWeight.bold),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 50,
                        color: Colors.blue,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 238, 232, 232),
                      ),
                      Positioned(
                        left: 20,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 50, 15, 146),
                          radius: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              'Mobile Money',
              style: TextStyle(
                color: widget.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
