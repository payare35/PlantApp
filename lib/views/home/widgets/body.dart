import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_App/constants.dart';
import 'package:plant_App/views/home/widgets/featured_plants.dart';
import 'package:plant_App/views/home/widgets/header_with_searchbar.dart';
import 'package:plant_App/views/home/widgets/recommended_plants.dart';
import 'package:plant_App/views/home/widgets/title_with_more_button.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreButton(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
