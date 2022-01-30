import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/animations/entranceFader.dart';
import 'package:flutter_profile/widgets/scoailMediaIconBtn.dart';
import 'package:flutter_profile/widgets/toolsTechWidget.dart';
import 'package:flutter_profile/widgets/widgetAnimator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(
        children: [
          Column(
            children: [
              buildHeading("ABOUT ME", height),
              buildNormalText("Get to know me :)", height),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/download.png',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.20,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: width < 1230 ? 25.0 : 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildSubHeading("Who am I?", height),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              buildNormalText(
                                  "I am Akash Deep Patel, a Flutter Developer, WordPress Develoepr and Software Developer.",
                                  height,
                                  Colors.white),
                              buildNormalText(
                                  "I am a Pre-Final Year B.Tech in Computer Science and Engineering student at 'Bhilai Institute of Technology, Durg'. I have been developing Mobile App for 1 year now. ",
                                  height),
                              buildNormalText(
                                  "If you want to talk about Flutter, Dart or anything else, feel free to drop me a message.",
                                  height),
                              SizedBox(
                                height: height * 0.020,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30.0),
                                height: height * 0.0009,
                                // width: width * 0.465,
                                color: kPrimaryTextColor,
                              ),
                              SizedBox(
                                height: height * 0.020,
                              ),
                              buildNormalText(
                                  "Technologies I have worked with: ",
                                  height,
                                  Colors.white),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    for (int i = 0; i < kTools.length; i++)
                                      ToolsTechWidget(
                                        techName: kTools[i],
                                      )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.020,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30.0),
                                height: height * 0.0009,
                                // width: width * 0.465,
                                color: kPrimaryTextColor,
                              ),
                              SizedBox(
                                height: height * 0.020,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildCustomizedButton("  CONTACT ME", height),
                                  buildCustomizedButton("  RESUME", height),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
