import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'homeDesktop.dart';
import 'homeMobile.dart';
import 'homeTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: HomeDesktop(),
        tablet: HomeTab(),
        mobile: HomeMobile(),
      ),
    );
  }
}
