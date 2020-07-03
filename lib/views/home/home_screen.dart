import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_App/views/home/widgets/body.dart';
import 'package:plant_App/views/home/widgets/custom_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }

  AppBar customAppBar() {
    return AppBar(
        elevation: 0.0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}));
  }
}
