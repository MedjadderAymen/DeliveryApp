import 'package:flutter/material.dart';
import 'package:delivery_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewFoodScreen extends StatelessWidget {
  const NewFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
        },
        child: Hero(
          tag: "floating",
          child: Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: double.infinity,
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
    );
  }
}
