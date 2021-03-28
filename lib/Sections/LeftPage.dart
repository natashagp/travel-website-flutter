import 'package:flutter/material.dart';
import 'package:travel_web_page/Components/CustomText.dart';

class LeftPage extends StatefulWidget {
  @override
  _LeftPageState createState() => _LeftPageState();
}

class _LeftPageState extends State<LeftPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 30.0),
              child: CustomText(
                text: "Travelrr",
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Hey!",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Where are you going on",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Vacations this Holidays?",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      height: 40.0,
                      width: 170.0,
                      child: Center(
                        child: CustomText(
                          text: "Plan a Vacation",
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
