import 'package:flutter/material.dart';
import 'package:flutter_01/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_01/widgets/notif_badge.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final CategoriesScroller categoriesScroller = CategoriesScroller();
    ScrollController controller = ScrollController();
    bool closeTopContainer = false;
    double topContainer = 0;
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;

    double w(double val) {
      return MediaQuery.of(context).size.width * (val / 100);
    }

    double h(double val) {
      return MediaQuery.of(context).size.height * (val / 100);
    }

    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainBackground,
      body: SafeArea(
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
                              style: TextStyle(fontWeight: FontWeight.w700)),
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
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    padding:
                        EdgeInsets.fromLTRB(w(2.4), h(0.79), w(0.5), h(0.79)),
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
                                hintStyle: TextStyle(color: moonrakerColor)),
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
                            borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                                  fontWeight: FontWeight.w400,
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
                                                  fontWeight: FontWeight.w400,
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
            CarouselSlider(
              options: CarouselOptions(
                height: h(25.62),
                aspectRatio: 16 / 9,
                viewportFraction: 0.3,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: w(34.67),
                        padding: EdgeInsets.only(
                            top: h(0.41), left: w(0.87), right: w(0.87)),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                width: w(34.67),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/bgCard2.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                ),
                                child: Text(
                                  'text $i',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                );
              }).toList(),
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
          ],
        )),
      ),
    );
  }
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Most\nFavorites",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Newest",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 Items",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Super\nSaving",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
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
