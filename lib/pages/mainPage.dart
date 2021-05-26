import 'package:flutter/material.dart';
import 'package:flutter_01/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_01/pages/bookingPage.dart';
import 'package:flutter_01/widgets/notif_badge.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final CategoriesScroller categoriesScroller = CategoriesScroller();
    bool closeTopContainer = false;

    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;

    double w(double val) {
      return MediaQuery.of(context).size.width * (val / 100);
    }

    double h(double val) {
      return MediaQuery.of(context).size.height * (val / 100);
    }

    void onTabTapped(int index) {
      setState(() {
        this._currentIndex = index;
      });
    }

    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainBackground,
      // bottomNavigationBar: BottomNavigationBar(
      //   // type: BottomNavigationBarType.fixed,
      //   backgroundColor: mainBackground,
      //   elevation: 0,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       backgroundColor: mainBackground,
      //       activeIcon: SvgPicture.asset('assets/icons/ic_home_act.svg'),
      //       icon: SvgPicture.asset('assets/icons/ic_home_non.svg'),
      //       // ignore: deprecated_member_use
      //       title: new Text('Home'),
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: SvgPicture.asset('assets/icons/ic_location_act.svg'),
      //       icon: SvgPicture.asset('assets/icons/ic_location_non.svg'),
      //       // ignore: deprecated_member_use
      //       title: new Text('Location'),
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: SvgPicture.asset('assets/icons/ic_document_act.svg'),
      //       icon: SvgPicture.asset('assets/icons/ic_document_non.svg'),
      //       // ignore: deprecated_member_use
      //       title: new Text('Document'),
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: SvgPicture.asset('assets/icons/ic_user_act.svg'),
      //       icon: SvgPicture.asset('assets/icons/ic_user_non.svg'),
      //       // ignore: deprecated_member_use
      //       title: new Text('User'),
      //     ),
      //   ],
      //   onTap: onTabTapped,
      // ),
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Container(
                child: Column(
              children: [
                Container(
                  // color: toolboxColor,
                  margin: EdgeInsets.fromLTRB(w(6.4), h(4.64), w(6.4), 0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/avatar.png',
                        width: w(9.6),
                        height: h(4.43),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: w(2.13)),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    height: 1,
                                    color: darkJungleGreenColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'Hi, ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                              TextSpan(text: 'Naufal!'),
                            ])),
                      ),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.all(1.0),
                          width: w(10.13),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: NotifBadge())
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: h(4.39)),
                  width: w(87.2),
                  // color: Colors.teal,
                  child: Column(
                    children: [
                      SizedBox(
                        width: w(87.2),
                        child: Text(
                          'Where you want\nto go?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              height: 1.2,
                              color: darkJungleGreenColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 33),
                        ),
                      ),
                      SizedBox(
                        height: h(1.97),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        padding: EdgeInsets.fromLTRB(
                            w(2.4), h(0.79), w(0.5), h(0.79)),
                        child: new Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: moonrakerColor,
                              size: 30.0,
                            ),
                            SizedBox(width: w(4.18)),
                            new Flexible(
                              child: new TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search a flight...',
                                    hintStyle:
                                        TextStyle(color: moonrakerColor)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: h(3.41)),
                        width: w(87.2),
                        child: Column(
                          children: [
                            SizedBox(
                              width: w(87.2),
                              child: Text(
                                'Upcoming Trips',
                                style: TextStyle(
                                    height: 1.2,
                                    color: balticSeaColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: h(1.97),
                            ),
                            Container(
                              width: w(87.2),
                              // height: h(19.74),
                              padding: EdgeInsets.fromLTRB(
                                  w(4.25), h(1.76), w(4.25), h(1.42)),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/bgCard1.png"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "02 April, 09:45 AM",
                                              style: TextStyle(
                                                  color: whiteColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 11),
                                            ),
                                            Text("PNK",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 28))
                                          ],
                                        )),
                                        Spacer(),
                                        Container(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text("03 April, 07:45 PM ",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 11)),
                                            Text("DPS",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 28))
                                          ],
                                        ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/planeProgress.png',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: h(1.02)),
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              vertical: h(0.4),
                                              horizontal: w(1.35)),
                                          decoration: BoxDecoration(
                                              color: lavenderMistColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4))),
                                          child: RichText(
                                              text: TextSpan(
                                                  style: TextStyle(
                                                      color: toolboxColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Pontianak, ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(text: 'Supadio'),
                                              ])),
                                        ),
                                        Spacer(),
                                        Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              vertical: h(0.4),
                                              horizontal: w(1.35)),
                                          decoration: BoxDecoration(
                                              color: lavenderMistColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4))),
                                          child: RichText(
                                              text: TextSpan(
                                                  style: TextStyle(
                                                      color: toolboxColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Denpasar, ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(text: 'Ngurah Rai'),
                                              ])),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: closeTopContainer ? 0 : 1,
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: size.width,
                      alignment: Alignment.topCenter,
                      height: closeTopContainer ? 0 : categoryHeight,
                      child: categoriesScroller),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            )),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: BottomNavigationBar(
                  // type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      backgroundColor: mainBackground.withOpacity(0.7),
                      activeIcon:
                          SvgPicture.asset('assets/icons/ic_home_act.svg'),
                      icon: SvgPicture.asset('assets/icons/ic_home_non.svg'),
                      // ignore: deprecated_member_use
                      title: new Text('Home'),
                    ),
                    BottomNavigationBarItem(
                      activeIcon:
                          SvgPicture.asset('assets/icons/ic_location_act.svg'),
                      icon:
                          SvgPicture.asset('assets/icons/ic_location_non.svg'),
                      // ignore: deprecated_member_use
                      title: new Text('Location'),
                    ),
                    BottomNavigationBarItem(
                      activeIcon:
                          SvgPicture.asset('assets/icons/ic_document_act.svg'),
                      icon:
                          SvgPicture.asset('assets/icons/ic_document_non.svg'),
                      // ignore: deprecated_member_use
                      title: new Text('Document'),
                    ),
                    BottomNavigationBarItem(
                      activeIcon:
                          SvgPicture.asset('assets/icons/ic_user_act.svg'),
                      icon: SvgPicture.asset('assets/icons/ic_user_non.svg'),
                      // ignore: deprecated_member_use
                      title: new Text('User'),
                    ),
                  ],
                  onTap: onTabTapped,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

//membuat slider
class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    // nanti digunakan untuk membuat list
    // List<int> text = [1, 2, 3, 4];
    // final children = <Widget>[];
    // for (var i in text) {
    //   children.add(new Text(i.toString()));
    // }

    void _toBookingPage() {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => BookingPage(),
        ),
      );
    }

    double w(double val) {
      return MediaQuery.of(context).size.width * (val / 100);
    }

    double h(double val) {
      return MediaQuery.of(context).size.height * (val / 100);
    }

    final double categoryHeight = h(25.62);
    final double categotyWidth = w(34.67);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            // children: children
            children: <Widget>[
              Container(
                  width: categotyWidth,
                  height: categoryHeight,
                  margin: EdgeInsets.only(right: w(4.27)),
                  // padding: EdgeInsets.only(
                  //     top: h(0.41), left: w(0.87), right: w(0.87)),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: h(0.41), left: w(0.87), right: w(0.87)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h(18.06),
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/bgCard2.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                              ),
                              child: Image.asset(
                                'assets/img1.png',
                                height: h(16.01),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Paris',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: darkJungleGreenColor)),
                                  Text('Prancis',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: darkJungleGreenColor
                                              .withOpacity(0.8))),
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      new Positioned.fill(
                          child: new Material(
                              color: Colors.transparent,
                              child: new InkWell(
                                onTap: _toBookingPage,
                              ))),
                    ],
                  )),
              Container(
                  width: categotyWidth,
                  height: categoryHeight,
                  margin: EdgeInsets.only(right: w(4.27)),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: h(0.41), left: w(0.87), right: w(0.87)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h(18.06),
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/bgCard2.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                              ),
                              child: Image.asset(
                                'assets/img2.png',
                                height: h(16.01),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tokyo',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: darkJungleGreenColor)),
                                  Text('Japan',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: darkJungleGreenColor
                                              .withOpacity(0.8))),
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      new Positioned.fill(
                          child: new Material(
                              color: Colors.transparent,
                              child: new InkWell(
                                onTap: _toBookingPage,
                              ))),
                    ],
                  )),
              Container(
                  width: categotyWidth,
                  height: categoryHeight,
                  margin: EdgeInsets.only(right: w(4.27)),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: h(0.41), left: w(0.87), right: w(0.87)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h(18.06),
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/bgCard2.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                              ),
                              child: Image.asset(
                                'assets/img3.png',
                                height: h(16.01),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kuala Lumpur',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: darkJungleGreenColor)),
                                  Text('Malaysia',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: darkJungleGreenColor
                                              .withOpacity(0.8))),
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      new Positioned.fill(
                          child: new Material(
                              color: Colors.transparent,
                              child: new InkWell(
                                onTap: _toBookingPage,
                              ))),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
