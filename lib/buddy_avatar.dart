import 'package:flutter/material.dart';

class BuddyAvatar extends StatelessWidget {
  const BuddyAvatar({
    super.key,
    required this.image,
    required this.color,
  });

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 40,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
