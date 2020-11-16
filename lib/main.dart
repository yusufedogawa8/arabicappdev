import 'package:bahasa_arab/constants.dart';
import 'package:bahasa_arab/ui/uis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bahas Arab',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgorundColor,
          primaryColor: Colors.amber,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Screen(),
    );
  }
}
