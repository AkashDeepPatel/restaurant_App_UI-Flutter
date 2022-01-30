import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  final double height;

  const NavBarLogo({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: MediaQuery.of(context).size.width >= 1000
          ? Row(
              children: [
                Image.asset(
                  "assets/icons/logo.png",
                  height: height ?? 20,
                ),
                Text("\t\t\t")
              ],
            )
          : Image.asset(
              "assets/icons/logo.png",
              height: height ?? 20,
            ),
    );
  }
}
