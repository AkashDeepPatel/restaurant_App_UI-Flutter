import 'package:flutter/material.dart';
import 'package:flutter_profile/widgets/projectCard.dart';
import 'package:flutter_profile/widgets/toolsTechWidget.dart';
import 'package:flutter_profile/widgets/widgetAnimator.dart';
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
        height: height - (height * 0.1),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              buildHeading("PROJECTS", height),
              buildNormalText("Some of my Previous Projects", height),
              SizedBox(
                height: width > 1200 ? height * 0.45 : width * 0.21,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return WidgetAnimator(
                        child: ProjectCard(
                          cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                          cardheight:
                              height < 1200 ? height * 0.32 : height * 0.1,
                          backImage: kProjectsBanner[index],
                          projectIcon: kProjectsIcons[index],
                          projectTitle: kProjectsTitles[index],
                          projectDescription: kProjectsDescriptions[index],
                          projectLink: kProjectsLinks[index],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return VerticalDivider(
                        color: Colors.transparent,
                        width: width * 0.015,
                      );
                    },
                    itemCount: kProjectsBanner.length),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              buildCustomizedButton(" More", height)
            ],
          ),
        ],
      ),
    );
  }
}
