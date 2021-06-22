import 'dart:ui';

import 'package:delivery_app/NewFoodScreen.dart';
import 'package:delivery_app/constants.dart';
import 'package:delivery_app/widgets/CategoryTitle.dart';
import 'package:delivery_app/widgets/FoodCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(fontWeight: FontWeight.bold),
            body1: TextStyle(color: kTextColor)),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewFoodScreen();
          }));
        },
        child: Hero(
          tag: "floating",
          child: Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor.withOpacity(.26),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
              child: SvgPicture.asset("assets/icons/plus.svg"),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 60),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "One click to find",
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  "Tasty Food",
                  style: Theme.of(context).textTheme.headline,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(
                  "All",
                  active: true,
                ),
                CategoryTitle("Italian"),
                CategoryTitle("Asian"),
                CategoryTitle("Chinese"),
                CategoryTitle("Algerian"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                    "Vegan salad bowl",
                    "red tomato",
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                    "assets/images/image_1.png",
                    "420Kcal",
                    20),
                FoodCard(
                    "Onion Salad",
                    "just onion",
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                    "assets/images/image_2.png",
                    "360Kcal",
                    16),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
