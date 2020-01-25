import 'package:flutter/material.dart';

import 'utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the MapView Screen
//        '/RouteSearch': (context) => new RoutePage(),
//        '/Announcements': (context) => new AnnouncementsPage(),

//        '/gSearch': (context) => new Search(),
      },
      //TODO: Make app dependent on Theme
//      theme: ThemeData(
//        primarySwatch: Colors.white,
//      ),
      home: MyHome(),
    );
  }
}
