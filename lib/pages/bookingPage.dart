import 'package:flutter/material.dart';
import 'package:flutter_01/theme.dart';
import 'package:flutter/services.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool tab1 = true;
  bool tab2 = false;
  bool tab3 = false;
  @override
  Widget build(BuildContext context) {
    double w(double val) {
      return MediaQuery.of(context).size.width * (val / 100);
    }

    double h(double val) {
      return MediaQuery.of(context).size.height * (val / 100);
    }

    bool updateBool() {
      tab1 = false;
      tab2 = false;
      tab3 = false;
      return true;
    }

    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: mainBackground,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    child: Image.asset(
                  'assets/planeImage.png',
                  width: w(100),
                  height: h(36.16),
                  fit: BoxFit.fill,
                )),
                Container(
                  margin: EdgeInsets.fromLTRB(w(6.4), h(2.6), w(6.4), h(4.26)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Book your flight',
                          style: TextStyle(
                              color: darkJungleGreenColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 32),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: h(6),
                        margin: EdgeInsets.only(top: h(2.96)),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('One Way',
                                        style: TextStyle(
                                            color: tab1
                                                ? balticSeaColor.withOpacity(1)
                                                : balticSeaColor
                                                    .withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    decoration: BoxDecoration(
                                        color: tab1
                                            ? selagoApproxColor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                  ),
                                  new Positioned.fill(
                                      child: new Material(
                                          color: Colors.transparent,
                                          child: new InkWell(
                                            onTap: () {
                                              tab1 = updateBool();
                                              setState(() {});
                                            },
                                          ))),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Roundtrip',
                                        style: TextStyle(
                                            color: tab2
                                                ? balticSeaColor.withOpacity(1)
                                                : balticSeaColor
                                                    .withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    decoration: BoxDecoration(
                                        color: tab2
                                            ? selagoApproxColor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                  ),
                                  new Positioned.fill(
                                      child: new Material(
                                          color: Colors.transparent,
                                          child: new InkWell(
                                            onTap: () {
                                              tab2 = updateBool();
                                              setState(() {});
                                            },
                                          ))),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Multicity',
                                        style: TextStyle(
                                            color: tab3
                                                ? balticSeaColor.withOpacity(1)
                                                : balticSeaColor
                                                    .withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    decoration: BoxDecoration(
                                        color: tab3
                                            ? selagoApproxColor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                  ),
                                  new Positioned.fill(
                                      child: new Material(
                                          color: Colors.transparent,
                                          child: new InkWell(
                                            onTap: () {
                                              tab3 = updateBool();
                                              setState(() {});
                                            },
                                          ))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // height: h(6),
                        margin: EdgeInsets.only(top: h(2.94)),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: h(1.81),
                                ),
                                Text(
                                  "FROM",
                                  style: TextStyle(
                                      color: balticSeaColor.withOpacity(0.5),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Container(
                                  width: w(80),
                                  height: h(7),
                                  margin: EdgeInsets.only(top: h(0.56)),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Pontianak (PNK)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: balticSeaColor),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        primary: magnoliaColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                  ),
                                )
                              ],
                            )),
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: h(1.5),
                                ),
                                Text(
                                  "TO",
                                  style: TextStyle(
                                      color: balticSeaColor.withOpacity(0.5),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Container(
                                  width: w(80),
                                  height: h(7),
                                  margin: EdgeInsets.only(top: h(0.56)),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Bandung (BDO)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: balticSeaColor),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        primary: magnoliaColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                  ),
                                )
                              ],
                            )),
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: h(1.5),
                                ),
                                Text(
                                  "DATE",
                                  style: TextStyle(
                                      color: balticSeaColor.withOpacity(0.5),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Container(
                                  width: w(80),
                                  height: h(7),
                                  margin: EdgeInsets.only(top: h(0.56)),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '04 April, 2021 ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: balticSeaColor),
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: balticSeaColor
                                                  .withOpacity(0.5),
                                            )),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        primary: magnoliaColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                  ),
                                )
                              ],
                            )),
                            Container(
                              width: w(80),
                              height: h(7.4),
                              margin:
                                  EdgeInsets.only(top: h(2.5), bottom: h(2.46)),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'See 25 Flights',
                                  style: TextStyle(color: whiteColor),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: darkJungleGreenColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
