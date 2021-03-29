import 'package:flutter/material.dart';
import 'package:travel_web_page/Components/CustomContainer.dart';
import 'package:travel_web_page/Components/CustomNav.dart';
import 'package:travel_web_page/Components/CustomText.dart';

List<String> category = ['All', 'Popular', 'Recents', 'Most-viewed'];
List<String> image = [
  "https://images.pexels.com/photos/2113566/pexels-photo-2113566.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/33041/antelope-canyon-lower-canyon-arizona.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/33545/sunrise-phu-quoc-island-ocean.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/5015523/pexels-photo-5015523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1518500/pexels-photo-1518500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/580151/pexels-photo-580151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1837603/pexels-photo-1837603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/2901212/pexels-photo-2901212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
];

class RightPage extends StatefulWidget {
  @override
  _RightPageState createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.43,
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu, size: 30.0),
                  Spacer(),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          child: CustomText(
                            text: 'Travelrr Stories',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 5.0),
                          child: CustomText(
                            text: 'Blog',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF6c42dd),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image(
                          image: AssetImage("assets/memoji.png"),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomText(
                text: "Let's enjoy",
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: "the Vacations!",
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFebebeb),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2.62,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        size: 25.0,
                        color: Color(0xFF8d8d8d),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomText(
                          text: "Search for a place",
                          color: Color(0xFF8d8d8d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: category.map((e) => CustomNav(e)).toList(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: image.map((e) => CustomContainer(e)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
