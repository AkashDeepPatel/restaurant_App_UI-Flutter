import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'components/constants.dart';

class MeditationPage extends StatelessWidget {
  // void playSound(int soundNumber) {
  //   final player = AudioCache();
  //   player.play('note$soundNumber.wav');
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mindfullness Meditation",
                style: Theme.of(context).textTheme.headline5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                ],
              ),
            ),
            Text("Loving-Kindness Meditation",
                style: Theme.of(context).textTheme.headline5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                ],
              ),
            ),
            Text("Transcendental Meditation",
                style: Theme.of(context).textTheme.headline5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                ],
              ),
            ),
            Text("Zen Meditation",
                style: Theme.of(context).textTheme.headline5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                ],
              ),
            ),
            Text("Spritual Meditation",
                style: Theme.of(context).textTheme.headline5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                ],
              ),
            ),
            Text("Vipassana Meditation",
                style: Theme.of(context).textTheme.headline5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                  buildDailyMeditationIcon(
                      context, "assets/images/image1.jpg", "Hello"),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Padding buildDailyMeditationIcon(
      BuildContext context, String imgSrc, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15),
      child: Column(
        children: [
          Stack(
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
                      colorFilter: ColorFilter.linearToSrgbGamma(),
                      image: AssetImage(imgSrc),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                  top: (MediaQuery.of(context).size.width / 2.5) / 2.5,
                  left: (MediaQuery.of(context).size.width / 2.5 - 30) / 2.65,
                  child: Center(
                    child: CircleAvatar(
                      child: IconButton(
                        icon: Icon(Icons.play_arrow_rounded),
                        onPressed: () {},
                      ),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.play_arrow_rounded),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
