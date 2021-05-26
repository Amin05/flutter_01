import 'package:flutter/material.dart';
import 'package:flutter_01/pages/mainPage.dart';
import 'package:flutter_01/theme.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w(double val) {
      return MediaQuery.of(context).size.width * (val / 100);
    }

    double h(double val) {
      return MediaQuery.of(context).size.height * (val / 100);
    }

    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: mainBackground,
      body: SafeArea(
          child: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  // width: 316,
                  // height: 289,
                  // color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(w(9), h(9), w(10), 0),
                  child: Image.asset(
                    'assets/cuate.png',
                    width: w(84),
                    height: h(35.5),
                  )),
              Container(
                width: w(80),
                // height: h(20),
                margin: EdgeInsets.only(top: h(6)),
                child: Text(
                  'Let’s Enjoy\nThe Beautiful\nWorld',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.2,
                      color: darkJungleGreenColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 40),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: h(1.9)),
                child: Text(
                  'Search the safest destinations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1,
                      color: darkJungleGreenColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
              Container(
                width: w(80),
                height: h(7.4),
                margin: EdgeInsets.only(top: h(8.8)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return MainPage();
                    }));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: whiteColor),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: darkJungleGreenColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
              )
            ]),
      )),
    );
  }
}
