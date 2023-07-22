import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_buddy/text_styles.dart';

class WordOfTheDay extends StatelessWidget {
  const WordOfTheDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Container for word of the day
        SizedBox(
          // height: 296,
          // color: Colors.amber,
          child: Column(
            children: [
              Container(
                height: 18,
              ),
              Stack(children: [
                Positioned.fill(
                  child: Container(
                    // height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD0BCFF),
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFFFD964),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(
                              0,
                              8,
                            ),
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 24, top: 28),
                          //drowdown for languages
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          'images/zigzag.png',
                          scale: 0.9,
                          alignment: Alignment.bottomRight,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      const P2(
                        text: 'Word of the day',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text("Bonjour",
                          style: GoogleFonts.grandstander(
                              fontSize: 48,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF200D43))),
                      const SizedBox(
                        height: 12,
                      ),

                      //definition card
                      Container(
                        width: double.infinity,
                        // height: 96,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '[ bawn - zhoor ]',
                                style: GoogleFonts.grandstander(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                child: Text(
                                  'a French greeting used when meeting during the daytime.',
                                  style: GoogleFonts.grandstander(
                                    color: const Color(0xFF492B82),
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.center,
                                  // maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 56,
                              // width: 240,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF21005D),
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xFF7D48DC),
                                      spreadRadius: 0,
                                      blurRadius: 0,
                                      offset: Offset(
                                        0,
                                        5,
                                      ),
                                    ),
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.library_books),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Learn a new word',
                                    style: GoogleFonts.grandstander(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 56,
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xFF7D48DC),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: Offset(
                                      0,
                                      5,
                                    ),
                                  ),
                                ]),
                            child: const Icon(
                              Icons.ios_share,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ])
            ],
          ),
        ),
        Align(
          alignment: (Alignment.topCenter),
          child: Image.asset('images/sun.png', scale: 0.8),
        ),
      ],
    );
  }
}
