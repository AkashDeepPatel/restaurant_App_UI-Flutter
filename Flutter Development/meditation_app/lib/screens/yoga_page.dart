import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'components/constants.dart';

class YogaPage extends StatefulWidget {
  @override
  State<YogaPage> createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Yoga", style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildYoutubePlayer(),
                  SizedBox(
                    height: 15,
                  ),
                  buildYoutubePlayer(),
                  SizedBox(
                    height: 15,
                  ),
                  buildYoutubePlayer(),
                  SizedBox(
                    height: 15,
                  ),
                  buildYoutubePlayer(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  YoutubePlayer buildYoutubePlayer() {
    return YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: 'zn2GwbPG-tc', //Add videoID.
        flags: YoutubePlayerFlags(
          hideControls: false,
          controlsVisibleAtStart: true,
          autoPlay: false,
          mute: false,
        ),
      ),
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.red,
    );
  }
}
