import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_profile/animations/entranceFader.dart';
import 'package:flutter_profile/widgets/arrowOnTop.dart';
import 'package:flutter_profile/widgets/navBarLogo.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'home/home.dart';
import 'package:universal_html/html.dart' as html;

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollControllerProvider _scrollControllerProvider =
      ScrollControllerProvider();
  bool _isScrollingDown = false;
  ScrollController _scrollController = ScrollController();

  final List<String> _screenNames = [
    "HOME",
    "ABOUT",
    "PROJECTS",
    "CONTACT",
  ];

  final List<IconData> _screenIcons = [
    Icons.home,
    Icons.person,
    Icons.article,
    Icons.phone,
  ];

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.05
              : i == 2
                  ? MediaQuery.of(context).size.height * 1.98
                  : i == 3
                      ? MediaQuery.of(context).size.height * 2.9
                      : MediaQuery.of(context).size.height * 4,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget screenWidget(int i) {
    if (i == 0)
      return HomeScreen();
    else if (i == 1)
      return HomeScreen();
    else if (i == 2)
      return HomeScreen();
    else if (i == 3)
      return HomeScreen();
    else if (i == 4)
      return HomeScreen();
    else if (i == 5)
      return HomeScreen();
    else
      return Container();
  }

  @override
  void initState() {
    _scrollController = _scrollControllerProvider.scroll;
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollingDown) {
          _isScrollingDown = true;
          setState(() {});
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: MediaQuery.of(context).size.width < 760
            ? AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [
                  NavBarLogo(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ],
              )
            : _appBarTabDesktop(),
        drawer:
            MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
        body: Stack(
          children: [
            SectionsBody(
              scrollController: _scrollController,
              sectionsLength: _screenIcons.length,
              sectionWidget: screenWidget,
            ),
            _isScrollingDown
                ? Positioned(
                    bottom: 90,
                    right: 0,
                    child: EntranceFader(
                        offset: Offset(0, 20),
                        child: ArrowOnTop(
                          onPressed: () => _scroll(0),
                        )))
                : Container()
          ],
        ));
  }

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -10),
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 250),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              child: MaterialButton(
                hoverColor: Colors.grey,
                onPressed: () => _scroll(index),
                child: Text(
                  childText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: Colors.grey.withAlpha(70),
              onPressed: () {
                _scroll(index);
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Icon(
                  icon,
                  color: Colors.grey,
                ),
                title: Text(childText,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
          );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.black,
      title: MediaQuery.of(context).size.width < 780
          ? EntranceFader(
              duration: Duration(milliseconds: 250),
              offset: Offset(0, -10),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: 20.0,
              ))
          : EntranceFader(
              offset: Offset(0, -10),
              duration: Duration(milliseconds: 250),
              delay: Duration(milliseconds: 100),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _screenNames.length; i++)
          _appBarActions(_screenNames[i], i, _screenIcons[i]),
        EntranceFader(
          offset: Offset(0, -10),
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 250),
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: Colors.grey.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.grey)),
              onPressed: () {
                html.window.open(
                    'https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing',
                    "pdf");
              },
              child: Text(
                "RESUME",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        // const SizedBox(width: 15.0),
        // SizedBox(
        //   height: 30.0,
        //   child: Switch(
        //     inactiveTrackColor: Colors.grey,
        //     // value: !_themeProv.lightTheme,
        //     onChanged: (value) {
        //       _themeProv.lightTheme = !value;
        //     },
        //     activeColor: kPrimaryColor,
        //   ),
        // ),
        // const SizedBox(width: 15.0),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Material(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: NavBarLogo(
                  height: 28,
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.light_mode,
                  color: Colors.grey,
                ),
                title: Text("Dark Mode", style: TextStyle(color: Colors.white)),
                // trailing: Switch(
                //   inactiveTrackColor: Colors.grey,
                //   value: !theme.lightTheme,
                //   onChanged: (value) {
                //     theme.lightTheme = !value;
                //   },
                //   activeColor: kPrimaryColor,
                // ),
              ),
              Divider(
                color: Colors.white,
              ),
              for (int i = 0; i < _screenNames.length; i++)
                _appBarActions(_screenNames[i], i, _screenIcons[i]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: Colors.grey.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey)),
                  onPressed: () {
                    launchURL(
                        "https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing");
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      "RESUME",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollControllerProvider extends ChangeNotifier {
  ScrollController scrollController = ScrollController();

  get scroll => scrollController;

  set scroll(int i) {
    scrollController.animateTo(
      i == 0 ? 100 : 0,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int sectionsLength;
  final Widget Function(int) sectionWidget;

  const SectionsBody({
    Key key,
    this.scrollController,
    this.sectionsLength,
    this.sectionWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // physics: !kIsWeb ? ScrollPhysics() : NeverScrollableScrollPhysics(),
        controller: scrollController,
        itemCount: sectionsLength,
        itemBuilder: (context, index) => sectionWidget(index),
      ),
    );
  }
}
