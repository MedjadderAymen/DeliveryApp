import 'package:delivery_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {

  final String title;
  final String image;

  const DetailsScreen(this.title, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
              child: Hero(
                tag: title,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Vegan salad bowl\n",
                        style: Theme.of(context).textTheme.title),
                    TextSpan(
                        text: "With red tomato",
                        style: TextStyle(color: kTextColor.withOpacity(.5))),
                  ]),
                ),
                Text(
                  "\$20",
                  style: Theme.of(context)
                      .textTheme
                      .headline!
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset("assets/icons/forward.svg")
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(.26)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 15,
                          child: Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kWhiteColor),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .button!
                                  .copyWith(color: kPrimaryColor, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
