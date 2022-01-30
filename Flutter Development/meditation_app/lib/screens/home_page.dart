import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/components/constants.dart';
import 'package:meditation_app/meditation_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:quotes/quotes.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color randomColor() =>
        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(0.5);
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quick Help", style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildQuickHelpIcon(context, "assets/images/qh1.png", "Sad"),
                buildQuickHelpIcon(context, "assets/images/qh2.png", "Sleep"),
                buildQuickHelpIcon(context, "assets/images/qh3.png", "Anxiety"),
                buildQuickHelpIcon(context, "assets/images/qh4.png", "Stress"),
              ],
            ),
            SizedBox(height: 20),
            Text("Daily Quotes", style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: randomColor(),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/invertedComma.svg",
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            Quotes.getRandom().getContent(),
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Daily Meditation",
                    style: Theme.of(context).textTheme.headline5),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      primary: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MeditationPage()),
                      );
                    },
                    child: Text("View all",
                        style: Theme.of(context).textTheme.bodyText2)),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDailyMeditationIcon(context, "assets/images/image1.jpg",
                      "Mindfullness\n  Meditation"),
                  SizedBox(
                    width: 20,
                  ),
                  buildDailyMeditationIcon(context, "assets/images/image2.jpg",
                      "Transcendental\n    Meditation"),
                  SizedBox(
                    width: 20,
                  ),
                  buildDailyMeditationIcon(context, "assets/images/image3.jpg",
                      "     Zen\nMeditation"),
                  SizedBox(
                    width: 20,
                  ),
                  buildDailyMeditationIcon(context, "assets/images/image4.jpg",
                      "  Spritual\nMeditation"),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Stack buildDailyMeditationIcon(
      BuildContext context, String imgSrc, String title) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width / 2.5,
          width: MediaQuery.of(context).size.width / 2.5 - 30,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imgSrc),
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          top: ((MediaQuery.of(context).size.width / 2.5) / 3.5) * 2.5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 30,
            height: (MediaQuery.of(context).size.width / 2.5) / 3.5,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Column buildQuickHelpIcon(BuildContext context, String imgSrc, String title) {
  return Column(
    children: [
      InkWell(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image(
              image: AssetImage(imgSrc),
            ),
          ),
          height: 70,
          width: 70,
          decoration: BoxDecoration(

              // image: DecorationImage(
              //   image: AssetImage(imgSrc),
              //   fit: BoxFit.contain,
              // ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                style: BorderStyle.solid,
                width: 2,
              )),
        ),
        onTap: () {},
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      )
    ],
  );
}
