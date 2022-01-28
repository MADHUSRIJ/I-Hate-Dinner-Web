import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ihatedinner/Screens/Home/comp/home_cooks.dart';
import 'package:ihatedinner/constants/color_const.dart';
import 'package:ihatedinner/utilities/sizeconfig.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? tabcontroller;
  int? _currentCount;
  int? _currentPosition;
  static const double EMPTY_SPACE = 10.0;
  ScrollController? _controller;
  bool isScrolledToTop = true;
  @override
  void initState() {
    // TODO: implement initState
    _currentPosition = 0;
    tabcontroller = TabController(
      length: 3,
      vsync: this,
      initialIndex: _currentPosition!,
    );
    _currentCount = 3;
    _controller = ScrollController();
    _controller!.addListener(_scrollListener);
    super.initState();
  }

  @override
  _scrollListener() {
    if (_controller!.offset <= _controller!.position.minScrollExtent &&
        !_controller!.position.outOfRange) {
      //call setState only when values are about to change
      if (!isScrolledToTop) {
        setState(() {
          //reach the top
          isScrolledToTop = true;
        });
      }
    } else {
      //call setState only when values are about to change
      if (_controller!.offset > EMPTY_SPACE && isScrolledToTop) {
        setState(() {
          //not the top
          isScrolledToTop = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorWhite,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: !isScrolledToTop ? Color(0xeeffffff) : colorWhite,
        elevation: isScrolledToTop ? 0 : 1,
        leadingWidth: 280,
        toolbarHeight: isScrolledToTop ? 120 : 80,
        leading: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultWidth! * 3,
              top: isScrolledToTop ? 48 : 4),
          child: Container(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "images/title.png",
                fit: BoxFit.fill,
              )),
        ),
        actions: [
          SizeConfig.screenWidth! > 1100
              ? Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.defaultWidth! * 2,
                      top: isScrolledToTop ? 48 : 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: SizeConfig.defaultWidth! * 2,
                      ),
                      SizedBox(
                        width: SizeConfig.defaultWidth! * 21,
                        child: TabBar(
                          controller: tabcontroller,
                          indicatorColor: colorPrimary,
                          
                          indicatorWeight: 1,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            Tab(
                              child: Text(
                                "Home Cooks",
                                style: GoogleFonts.poppins(
                                    color: colorDarkGray, fontSize: 18),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Creators",
                                style: GoogleFonts.poppins(
                                    color: colorDarkGray, fontSize: 18),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Business",
                                style: GoogleFonts.poppins(
                                    color: colorDarkGray, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.defaultWidth! * 2,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        margin: const EdgeInsets.only(right: 25),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          border: Border.all(width: 1, color: colorLightGray),
                        ),
                        width: 130,
                        height: 46,
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: colorDarkGray),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: colorPrimary,
                        ),
                        width: 130,
                        height: 46,
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: colorWhite,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                      right: 48, top: isScrolledToTop ? 58 : 24, bottom: 24),
                  child: Container(
                    height: 28,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        border: Border.all(color: colorLightGray, width: 1)),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        IconlyLight.filter,
                        color: colorDarkGray,
                        size: 24,
                      ),
                    ),
                  ),
                ),
        ],
      ),
      body: getTabBarPages(),
    ));
  }

  Widget getTabBarPages() {
    return TabBarView(controller: tabcontroller, children: <Widget>[
      SingleChildScrollView(controller: _controller, child: home_cooks()),
      Container(
        child: Text("Creatores"),
      ),
      Container(
        child: Text("Businness"),
      ),
    ]);
  }
}
