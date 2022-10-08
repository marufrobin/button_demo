import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CountryBar extends StatelessWidget {
  String menuName;
  bool isSlected;
  VoidCallback voidcallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      // color: Colors.red,
      child: Stack(children: [
        Text(
          "Popular",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 20,
          child: Container(
            height: 5,
            width: 25,
            color: Colors.red,
          ),
        )
      ]),
    );
  }
}
