import 'package:flutter/material.dart';
import 'package:workshop_navigator/pages/screen_1.dart';
import 'package:workshop_navigator/pages/screen_2.dart';
import 'package:workshop_navigator/pages/screen_3.dart';
import 'package:workshop_navigator/pages/screen_4_navigator_2.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: const Screen1(),
      routes: <String, WidgetBuilder> {
        '/screen1': (BuildContext context) => const Screen1(),
        '/screen2': (BuildContext context) => const Screen2(),
        '/screen3': (BuildContext context) => const Screen3(),
        '/screen4': (BuildContext context) => const Screen4WithNavigator2(),
      },
    );
  }
}