import 'package:flutter/material.dart';
import 'package:language_buddy/text_styles.dart';
import 'package:language_buddy/wotd.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 32,
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H1(
              text: 'Hey, buddy',
            ),
            SizedBox(
              height: 24,
            ),
            WordOfTheDay(),
            SizedBox(
              height: 24,
            ),
            // Container(
            //   padding: const EdgeInsets.all(16),
            //   height: 156,
            //   color: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }
}
