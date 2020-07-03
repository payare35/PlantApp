import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_App/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key key, this.iconPath}) : super(key: key);

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62.0,
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: 62.0,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 22.0,
                color: kPrimaryColor.withOpacity(0.29)),
            BoxShadow(
                offset: Offset(-15, -15), color: Colors.white, blurRadius: 20.0)
          ]),
      child: SvgPicture.asset(iconPath),
    );
  }
}
