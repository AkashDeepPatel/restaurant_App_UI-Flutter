import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/providers/themeProvider.dart';
import 'package:portfolio/widgets/socialMediaIcon.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class HomeMobile extends StatefulWidget {
  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    // final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: -width * 0.0003,
              child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    "assets/images/main.png",
                    height: height * 0.65,
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "HEY THERE! ",
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.025,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Image.asset(
                          "assets/icons/hi.gif",
                          height: height * 0.03,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Akash Deep",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.055,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      "Patel",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.055,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: kPrimaryColor,
                        ),
                        TyperAnimatedTextKit(
                            isRepeatingAnimation: true,
                            speed: Duration(milliseconds: 50),
                            textStyle: GoogleFonts.montserrat(
                              fontSize: height * 0.03,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                            text: [
                              "Flutter Developer",
                              "Software Developer",
                              "Freelancer"
                            ])
                      ],
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (int i = 0; i < kSocialIcons.length; i++)
                          SocialMediaIconBtn(
                            icon: kSocialIcons[i],
                            socialLink: kSocialLinks[i],
                            height: height * 0.03,
                            horizontalPadding: 2.0,
                          )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
