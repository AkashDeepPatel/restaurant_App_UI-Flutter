import 'package:flutter/material.dart';

import '../constants.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final Widget icon;
  final String socialLink;
  final double height;
  final double verticalPadding;

  const SocialMediaIconBtn(
      {Key key, this.icon, this.socialLink, this.height, this.verticalPadding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: IconButton(
        icon: icon,
        iconSize: height,
        onPressed: () => launchURL(socialLink),
      ),
    );
  }
}
