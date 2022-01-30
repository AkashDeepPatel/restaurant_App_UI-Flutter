import 'package:flutter/material.dart';
import 'package:flutter_profile/widgets/toolsTechWidget.dart';
import 'package:flutter_profile/widgets/workBox.dart';
import 'package:flutter_profile/widgets/work_custom_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class ProjectsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height * 1.4,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              buildHeading("PROJECTS", height),
              buildNormalText("Some of my Previous Projects", height),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: (height * 3) / 4,
                      child: Stack(
                        children: [
                          Center(
                            child: VerticalDivider(
                              color: Colors.grey,
                              thickness: 1.75,
                              width: 10,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: FaIcon(
                                    FontAwesomeIcons.laptopHouse,
                                    color: Colors.white,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: FaIcon(
                                    FontAwesomeIcons.laptopHouse,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:
                        Container(height: (height * 3) / 4, child: WorkBox()),
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
