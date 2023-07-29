import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StreakChip extends StatelessWidget {
  StreakChip({
    super.key,
    required this.day,
    required this.active,
  });

  final int day;
  bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Image.asset(active
            ? 'images/streak_active.png'
            : 'images/Card-state-layer/Vector 66.png'),
        Text(
          day.toString(),
          style: GoogleFonts.grandstander(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )
      ]),
    );
  }
}
