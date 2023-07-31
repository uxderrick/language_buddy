import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_buddy/buddy_avatar.dart';
import 'package:language_buddy/buttons.dart';

class SelectBuddyModal extends StatelessWidget {
  const SelectBuddyModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SizedBox(
          width: 216,
          child: Text(
            'Select a new buddy to start a translation convo',
            style: GoogleFonts.grandstander(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w900,
              height: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuddyAvatar(
              image: 'images/3d_avatar_8.png',
              color: Color(0xff1B6EF3),
            ),
            SizedBox(
              width: 16,
            ),
            BuddyAvatar(
              image: 'images/3d_avatar_13.png',
              color: Color(0xffDC362E),
            ),
            SizedBox(
              width: 16,
            ),
            BuddyAvatar(
              image: 'images/3d_avatar_29.png',
              color: Color(0xffAAF767),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const GhostButton(
            text: 'Close',
          ),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
