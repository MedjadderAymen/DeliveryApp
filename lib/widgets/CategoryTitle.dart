import 'package:flutter/material.dart';
import 'package:delivery_app/constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle(this.title, {Key? key, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button!.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
      ),
    );
  }
}