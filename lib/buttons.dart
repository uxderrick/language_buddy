import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GhostButton extends StatelessWidget {
  const GhostButton({
    super.key,
    required this.text,
  });

  // ignore: prefer_typing_uninitialized_variables
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          border: Border.all(
            width: 4,
            color: Colors.white,
          )),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.grandstander(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
