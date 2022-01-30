import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/home_body.dart';
import 'package:meditation_app/my_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_client/unsplash_client.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isLightMode = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meditation App",
          style: Theme.of(context).textTheme.headline4,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Consumer<MyThemeModel>(
              builder: (context, theme, child) => GestureDetector(
                    onTap: () => theme.changeTheme(),
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: SvgPicture.asset(
                        theme.isLightTheme
                            ? "assets/icons/sun.svg"
                            : "assets/icons/moon.svg",
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ))
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //         horizontal: kDefaultPadding, vertical: 10),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       // ignore: prefer_const_literals_to_create_immutables
      //       children: [
      //         buildBottomNavBarIcon("assets/icons/unselectedHome.svg"),
      //         buildBottomNavBarIcon("assets/icons/unselectedYoga.svg"),
      //         buildBottomNavBarIcon("assets/icons/unselectedMeditation.svg"),
      //         buildBottomNavBarIcon("assets/icons/unselectedBlog.svg"),
      //         buildBottomNavBarIcon("assets/icons/unselectedProfile.svg"),
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: Theme.of(context).iconTheme,
        selectedIconTheme: Theme.of(context).iconTheme,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          buildBottomNavigationBarItem("assets/icons/unselectedHome.svg",
              "assets/icons/selectedHome.svg"),
          buildBottomNavigationBarItem("assets/icons/unselectedYoga.svg",
              "assets/icons/selectedYoga.svg"),
          buildBottomNavigationBarItem("assets/icons/unselectedMeditation.svg",
              "assets/icons/selectedMeditation.svg"),
          buildBottomNavigationBarItem("assets/icons/unselectedProfile.svg",
              "assets/icons/selectedProfile.svg"),
          // buildBottomNavigationBarItem("assets/icons/unselectedBlog.svg",
          //     "assets/icons/selectedBlog.svg"),
        ],
      ),
      body: HomeBody(),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      String unselectedIconSrc, String selectedIconSrc) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: SvgPicture.asset(unselectedIconSrc),
      activeIcon: SvgPicture.asset(selectedIconSrc),
      title: Text(""),
    );
  }

  IconButton buildBottomNavBarIcon(String icon) {
    return IconButton(
      splashRadius: 1,
      icon: SvgPicture.asset(icon),
      iconSize: 35,
      onPressed: () {},
    );
  }
}
