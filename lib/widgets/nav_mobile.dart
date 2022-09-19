import 'package:flutter/material.dart';
import 'package:website/helpers/style.dart';

AppBar mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: active,
        ),
        onPressed: () {
          key.currentState?.openDrawer();
        },
      ),
      title: Image.asset("assets/images/logo.png"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: bgColor,
    );
