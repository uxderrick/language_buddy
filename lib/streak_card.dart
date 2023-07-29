import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_buddy/streak_chip.dart';

class StreakCard extends StatefulWidget {
  const StreakCard({
    super.key,
  });

  @override
  State<StreakCard> createState() => _StreakCardState();
}

class _StreakCardState extends State<StreakCard> {
  int day = 1;
  List<bool> streakActiveStatus = List.generate(700, (index) => false);

  @override
  void initState() {
    super.initState();
    _startCountingDays();
  }

  void _startCountingDays() async {
    for (int i = 0; i < 700; i++) {
      await Future.delayed(
        const Duration(seconds: 1),
      );
      setState(() {
        streakActiveStatus[i] = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 156,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/image 2.png',
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Your streak',
                  style: GoogleFonts.grandstander(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              // color: Colors.white,
              height: 40,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 700,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return StreakChip(
                    day: index + 1,
                    active: streakActiveStatus[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Translate with your buddies more to get more streak days!',
              style: GoogleFonts.inriaSans(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
