import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class P2 extends StatelessWidget {
  const P2({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inriaSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF1F1F1F).withOpacity(0.3),
        ));
  }
}

class H1 extends StatelessWidget {
  const H1({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.grandstander(
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
