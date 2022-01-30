import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/blog_page.dart';
import 'package:meditation_app/components/constants.dart';
import 'package:meditation_app/home_page.dart';
import 'package:meditation_app/login_page.dart';
import 'package:meditation_app/my_theme_provider.dart';
import 'package:meditation_app/profile_page.dart';
import 'package:meditation_app/yoga_page.dart';
import 'package:provider/provider.dart';
import 'meditation_page.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    YogaPage(),
    MeditationPage(),
    BlogPage(),
    LoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLightMode = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meditate",
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        unselectedIconTheme: Theme.of(context).iconTheme,
        selectedIconTheme: Theme.of(context).iconTheme,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          buildBottomNavigationBarItem("assets/icons/unselectedHome.svg",
              "assets/icons/selectedHome.svg", "Home"),
          buildBottomNavigationBarItem("assets/icons/unselectedYoga.svg",
              "assets/icons/selectedYoga.svg", "Yoga"),
          buildBottomNavigationBarItem("assets/icons/unselectedMeditation.svg",
              "assets/icons/selectedMeditation.svg", "Meditation"),
          // buildBottomNavigationBarItem("assets/icons/unselectedBlog.svg",
          //     "assets/icons/selectedBlog.svg"),
          buildBottomNavigationBarItem("assets/icons/unselectedProfile.svg",
              "assets/icons/selectedProfile.svg", "Blog"),
          buildBottomNavigationBarItem("assets/icons/unselectedProfile.svg",
              "assets/icons/selectedProfile.svg", "Profile"),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      // HomeBody(),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      String unselectedIconSrc, String selectedIconSrc, String title) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(unselectedIconSrc),
      // activeIcon: SvgPicture.asset(selectedIconSrc),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
