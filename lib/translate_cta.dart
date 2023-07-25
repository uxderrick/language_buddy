import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TranslateCTA extends StatelessWidget {
  const TranslateCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 96,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF381E72),
          borderRadius: BorderRadius.circular(32),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF64FFE3),
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(
                0,
                8,
              ),
            ),
          ]),
      child: Container(
        padding: const EdgeInsets.only(left: 24, right: 8),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Text(
              'Translate a new word',
              style: GoogleFonts.grandstander(
                color: const Color(0xFF200D43).withOpacity(0.4),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(12),
              // height: 40,
              // width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: const Color(0xFFE7E0EC),
              ),
              child: const Icon(
                Icons.send,
                color: Color(0xFF21005D),
              ),
            )
          ],
        ),
      ),
    );
  }
}
