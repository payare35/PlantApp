import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_App/constants.dart';
import 'package:plant_App/views/detail/widgets/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.85,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                  Spacer(),
                  IconCard(
                    iconPath: "assets/icons/sun.svg",
                  ),
                  IconCard(
                    iconPath: "assets/icons/icon_2.svg",
                  ),
                  IconCard(
                    iconPath: "assets/icons/icon_3.svg",
                  ),
                  IconCard(
                    iconPath: "assets/icons/icon_4.svg",
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.85,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                    bottomLeft: Radius.circular(63.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.29),
                        blurRadius: 60)
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
