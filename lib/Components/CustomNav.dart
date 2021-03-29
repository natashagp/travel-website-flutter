import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_web_page/Components/CustomText.dart';

class CustomNav extends StatefulWidget {
  final String text;

  CustomNav(this.text);

  @override
  _CustomNavState createState() => _CustomNavState();
}

class _CustomNavState extends State<CustomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: CustomText(text: widget.text),
      ),
    );
  }
}
