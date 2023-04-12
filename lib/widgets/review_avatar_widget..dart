import 'package:flutter/material.dart';

class ReviewersAvatarWidget extends StatefulWidget {
  const ReviewersAvatarWidget({this.color = Colors.white, super.key});
  final Color color;
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
      'assets/users/jl.jpg',
      'assets/users/sr.jpg',
    ];
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.052,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        for (var i = 0; i < 6; i++)
          if (i == 5)
            Positioned(
              left: i * 22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Container(
                  color: widget.color,
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
                  color: widget.color,
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
