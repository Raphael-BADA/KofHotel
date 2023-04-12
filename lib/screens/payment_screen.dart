import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../data/data.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({required this.room, super.key});
  final Room room;
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
            top: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Text('')),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: PaymentCard(
                      service: 'T-MONEY',
                      textColor: Colors.green,
                      cardColor: Color.fromARGB(250, 247, 217, 72),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: PaymentCard(
                      service: 'ORANGE',
                      textColor: Colors.white,
                      cardColor: Color.fromARGB(255, 218, 90, 22),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: PaymentCard(
                      service: 'MOOV',
                      textColor: Color.fromARGB(255, 233, 117, 67),
                      cardColor: Color.fromARGB(255, 58, 122, 174),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: PaymentCard(
                      service: 'T-MONEY',
                      textColor: Colors.green,
                      cardColor: Color.fromARGB(250, 247, 217, 72),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.9,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              child: Container(
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
                            builder: ((context) =>
                                PaymentScreen(room: widget.room)),
                          ),
                        );
                      },
                      child: Text(
                        'PAY NOW',
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
            ),
          ),
        ],
      ),
    );
  }
}
