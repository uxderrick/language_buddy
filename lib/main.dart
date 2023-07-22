import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xFF21005D)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 32,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey, buddy",
              style: GoogleFonts.grandstander(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 296,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Container(
                        height: 18,
                      ),
                      Stack(children: [
                        Container(
                          height: 278,
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
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          height: 278,
                          child: Image.asset('images/zigzag.png', scale: 0.9),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Text("Word of the day",
                                    style: GoogleFonts.inriaSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF1F1F1F))),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text("Bonjour",
                                    style: GoogleFonts.grandstander(
                                        fontSize: 48,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFF200D43))),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  height: 96,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                )
                              ],
                            ),
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
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 156,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
