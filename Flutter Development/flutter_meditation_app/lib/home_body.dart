import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';

class HomeBody extends StatelessWidget {
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
            Text("Quick Help", style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildQuickHelpIcon(context, "😐", "Stress"),
                buildQuickHelpIcon(context, "😐", "Stress"),
                buildQuickHelpIcon(context, "😐", "Stress"),
                buildQuickHelpIcon(context, "😐", "Stress"),
              ],
            ),
            SizedBox(height: 20),
            Text("Daily Quotes", style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: MediaQuery.of(context).size.width * 0.50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://picsum.photos/seed/picsum/200/300",
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Quotes here",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Daily Meditation",
                    style: Theme.of(context).textTheme.headline5),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      primary: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: Text("View all",
                        style: Theme.of(context).textTheme.headline6)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 2.5,
                      width: MediaQuery.of(context).size.width / 2.5 - 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://picsum.photos/seed/picsum/200/300"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Positioned(
                      top: ((MediaQuery.of(context).size.width / 2.5) / 3.5) *
                          2.5,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5 - 30,
                        height: (MediaQuery.of(context).size.width / 2.5) / 3.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("  Spritual\nMeditation"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

Column buildQuickHelpIcon(BuildContext context, String emoji, String title) {
  return Column(
    children: [
      InkWell(
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                style: BorderStyle.solid,
                width: 1,
              )),
          child: Center(child: Text(emoji, style: TextStyle(fontSize: 35))),
        ),
        onTap: () {},
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      )
    ],
  );
}
