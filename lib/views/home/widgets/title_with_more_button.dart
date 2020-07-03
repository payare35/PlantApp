import 'package:flutter/material.dart';
import 'package:plant_App/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({Key key, this.press, this.title})
      : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomerLine(text: title),
          Spacer(),
          FlatButton(
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: press,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomerLine extends StatelessWidget {
  const TitleWithCustomerLine({Key key, this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: (kDefaultPadding / 4)),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: (kDefaultPadding / 4)),
              height: 7.0,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
