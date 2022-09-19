import 'package:flutter/material.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/helpers/style.dart';
import 'package:website/pages/widget/desktop.dart';
import 'package:website/pages/widget/mobile.dart';
import 'package:website/widgets/drawer.dart';
import 'package:website/widgets/nav_mobile.dart';
import 'package:website/widgets/navbar_desktop.dart';

class Home extends StatelessWidget {
  @override
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  // Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? mobileTopBar(scaffoldKey)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: const NavBar(),
            ),
      drawer: const SideMenu(),
      backgroundColor: bgColor,
      body: ResponsiveWidget(
          largeScreen: DesktopScreen(), smallScreen: MobileScreen()),
    );
  }
}
