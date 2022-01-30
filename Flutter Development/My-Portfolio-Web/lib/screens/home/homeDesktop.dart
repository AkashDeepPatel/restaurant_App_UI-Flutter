import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/animations/entranceFader.dart';
import 'package:flutter_profile/widgets/scoailMediaIconBtn.dart';
import 'package:flutter_profile/widgets/widgetAnimator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: height - 50,
      // width: width,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0.3, -0.95),
          colors: [
            Color(0xff3D3F43),
            Color(0xff191A1F),
          ],
          radius: 1.0,
        ),
      ),
      child: Center(
        child: Stack(
          children: [
            Positioned(
              left: width * 0.285,
              top: height * 0.355,
              child: Text(
                "I AM",
                textAlign: TextAlign.left,
                style: GoogleFonts.ubuntuMono(
                  color: Colors.white,
                  fontSize: height * 0.025,
                ),
              ),
            ),
            Positioned(
              top: height * 0.35,
              left: width * 0.21,
              child: Text(
                "AKASH DEEP",
                style: GoogleFonts.sigmarOne(
                  color: Colors.white,
                  fontSize: (height + width) * 0.05, //height*0.15
                ),
              ),
            ),
            Positioned(
              left: width * 0.65,
              top: height * 0.58,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.red,
                  ),
                  TyperAnimatedTextKit(
                    isRepeatingAnimation: true,
                    speed: Duration(milliseconds: 50),
                    textStyle: GoogleFonts.ubuntuMono(
                      fontSize: height * 0.025,
                      color: Colors.white,
                    ),
                    text: [
                      "Flutter Developer",
                      "WordPress Develoepr",
                      "FrontEnd Developer",
                      "Software Developer"
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: height * 0.03,
              left: width * 0.03,
              child: Column(
                  children: List.generate(
                      kSocialIcons.length,
                      (index) => WidgetAnimator(
                              child: SocialMediaIconBtn(
                            icon: kSocialIcons[index],
                            socialLink: kSocialLinks[index],
                            height: height * 0.03,
                            verticalPadding: width * 0.0020,
                          )))),
            )
          ],
        ),
      ),
    );
  }
}
