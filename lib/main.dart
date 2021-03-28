import 'package:flutter/material.dart';
import 'package:travel_web_page/Sections/LeftPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LeftPage(),
        ],
      ),
    );
  }
}
