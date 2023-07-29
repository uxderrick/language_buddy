import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_buddy/streak_card.dart';
import 'package:language_buddy/text_styles.dart';
import 'package:language_buddy/translate_CTA.dart';
import 'package:language_buddy/wotd.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 32,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF21005D),
            Color(0xFF110030),
          ],
        )),

        //#21005D, #110030
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: double.infinity,
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  H1(
                    text: 'Hey, buddy',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  WordOfTheDay(),
                  SizedBox(
                    height: 24,
                  ),
                  TranslateCTA(),
                  SizedBox(
                    height: 24,
                  ),
                  StreakCard(),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
