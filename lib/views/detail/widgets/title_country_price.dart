import 'package:flutter/material.dart';
import 'package:plant_App/constants.dart';

class TitleCountryAndPrice extends StatelessWidget {
  const TitleCountryAndPrice({Key key, this.country, this.price, this.title})
      : super(key: key);
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: "$country",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300))
              ])),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
