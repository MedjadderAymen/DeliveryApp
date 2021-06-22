import 'package:delivery_app/DetailsScreen.dart';
import 'package:delivery_app/constants.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String description;
  final String image;
  final String calories;
  final int price;

  const FoodCard(this.title, this.ingredient, this.description, this.image,
      this.calories, this.price,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 375,
      width: 250,
      child: Stack(
        children: [
          //big light background
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 330,
              width: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06)),
            ),
          ),
          //Rounded background
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15)),
            ),
          ),
          //Food  image
          Positioned(
            top: 0,
            left: -50,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailsScreen(title,image);
                }));
              },
              child: Hero(
                tag: title,
                child: Container(
                  height: 184,
                  width: 276,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image))),
                ),
              ),
            ),
          ),
          //Price in here
          Positioned(
            right: 10,
            top: 90,
            child: Text(
              "\$$price",
              style: Theme.of(context)
                  .textTheme
                  .headline!
                  .copyWith(color: kPrimaryColor),
            ),
          ),
          Positioned(
            top: 201,
            left: 40,
            child: Container(
              width: 201,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "With $ingredient",
                    style: TextStyle(color: kTextColor.withOpacity(.4)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "$description.",
                    maxLines: 3,
                    style: TextStyle(color: kTextColor.withOpacity(.65)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "$calories Kcal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
