import 'package:flutter/material.dart';
import 'package:plant_App/constants.dart';
import 'package:plant_App/views/detail/widgets/image_and_icons.dart';
import 'package:plant_App/views/detail/widgets/title_country_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleCountryAndPrice(
            country: "Russia",
            title: "Angelica",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                height: 84.0,
                width: size.width / 2,
                child: FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20.0))),
                    color: kPrimaryColor,
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    )),
              ),
              Expanded(
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Description",
                        style: TextStyle(color: kPrimaryColor, fontSize: 16.0),
                      )))
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
