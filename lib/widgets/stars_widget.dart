import 'package:flutter/material.dart';

import '../colors.dart';

class StarsWidget extends StatefulWidget {
  const StarsWidget({required this.rating, super.key});
  final int rating;
  @override
  State<StarsWidget> createState() => _StarsWidgetState();
}

class _StarsWidgetState extends State<StarsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < widget.rating; i++) Icon(Icons.star, color: yellow),
        for (var i = 0; i < 5 - widget.rating; i++)
          Icon(Icons.star, color: Colors.black),
      ],
    );
  }
}
