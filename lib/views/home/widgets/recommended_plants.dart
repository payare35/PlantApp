import 'package:flutter/material.dart';
import 'package:plant_App/constants.dart';
import 'package:plant_App/views/detail/detail_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            title: "Samantha",
            country: "Russia",
            price: 440,
            imagePath: "assets/images/image_1.png",
            press: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailedScreen()));
            },
          ),
          RecommendedPlantCard(
            title: "Angelica",
            country: "Russia",
            price: 560,
            imagePath: "assets/images/image_2.png",
            press: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailedScreen()));
            },
          ),
          RecommendedPlantCard(
            title: "Samantha",
            country: "Russia",
            price: 440,
            imagePath: "assets/images/image_3.png",
            press: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailedScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard(
      {Key key,
      this.title,
      this.country,
      this.press,
      this.price,
      this.imagePath})
      : super(key: key);
  final String imagePath;
  final String title;
  final String country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      child: Column(
        children: [
          Image.asset(imagePath),
          InkWell(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.23),
                        offset: Offset(0, 10),
                        blurRadius: 50.0)
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                        children: [
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)))
                        ]),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
