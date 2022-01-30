import 'package:flutter/material.dart';
import 'package:flutter_profile/widgets/toolsTechWidget.dart';
import 'package:flutter_profile/widgets/workBox.dart';
import 'package:flutter_profile/widgets/work_custom_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class ContactMeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height - (height * 0.08),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildHeading("CONTACT ME", height),
                  buildNormalText("Get in Touch", height),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: width * 0.2,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Column(
                                children: [
                                  // SizedBox(
                                  //   height: height * 0.05,
                                  // ),
                                  buildNormalTextContactMe(
                                    "Although I'm currently looking for SDE-1 opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                                    height,
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  buildNormalText(
                                      "Address", height, Colors.white),
                                  buildNormalTextWithoutPadding(
                                      "Raigarh, Chhattisgarh, India", height),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  buildNormalText(
                                      "Phone", height, Colors.white),
                                  buildNormalTextWithoutPadding(
                                      "(+91)8889118966", height),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  buildNormalText(
                                      "E-mail", height, Colors.white),
                                  buildNormalTextWithoutPadding(
                                      "itsakashdeep148@gmail.com", height),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: width * 0.3,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: width * 0.3,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Material(
                                elevation: 10.0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.03,
                                      vertical: height * 0.06),
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Form(
                                        // key: _formKey,
                                        child: Column(
                                          children: [
                                            buildTextFormField(
                                                "Your Name: ", height),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            buildTextFormField(
                                                "Your Phone: ", height),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            buildTextFormField(
                                                "Your Email: ", height),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            buildTextFormField(
                                                "Message: ", height),
                                            SizedBox(
                                              height: height * 0.06,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                          child: buildCustomizedButton(
                                              " SEND MESSAGE", height))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: width * 0.3,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: height * 0.06,
                width: width,
                color: Colors.grey.withOpacity(0.01),
                child: Center(
                  child: buildNormalText(
                      "Designed & Developed by Akash with Flutter", height),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
