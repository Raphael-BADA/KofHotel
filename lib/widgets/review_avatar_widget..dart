import 'package:flutter/material.dart';

class ReviewersAvatarWidget extends StatefulWidget {
  const ReviewersAvatarWidget({super.key});

  @override
  State<ReviewersAvatarWidget> createState() => _ReviewersAvatarWidgetState();
}

class _ReviewersAvatarWidgetState extends State<ReviewersAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> usersAvatarPath = [
      'assets/users/sr.jpg',
      'assets/users/si.jpg',
      'assets/users/al.jpg',
      'assets/users/jl.jpg'
    ];
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.052,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        for (var i = 0; i < 5; i++)
          if (i == 4)
            Positioned(
              left: i * 22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color.fromARGB(255, 167, 157, 64),
                      child: Text(
                        'all',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          else
            Positioned(
              left: i * 22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(usersAvatarPath[i]),
                    ),
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
