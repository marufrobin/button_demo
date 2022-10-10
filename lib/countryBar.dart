import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CountryBar extends StatefulWidget {
  String menuName;
  bool isSlected;
  VoidCallback voidcallBack;

  CountryBar(
      {required this.isSlected,
      required this.voidcallBack,
      required this.menuName});

  @override
  State<CountryBar> createState() => _CountryBarState();
}

class _CountryBarState extends State<CountryBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.voidcallBack,
      child: Container(
        height: 30,
        // color: Colors.red,
        child: Stack(children: [
          Text(
            "${widget.menuName}",
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
              color: widget.isSlected ? Colors.red : Colors.transparent,
            ),
          )
        ]),
      ),
    );
  }
}
