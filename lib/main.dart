import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_01/pages/landingPage.dart';
import 'package:flutter_01/pages/mainPage.dart';
import 'package:flutter_01/pages/bookingPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });

  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'DM Sans'),
        home: LandingPage());
        // home: MainPage());
    // home: BookingPage());
    // home: Text('home page'));
  }
}
