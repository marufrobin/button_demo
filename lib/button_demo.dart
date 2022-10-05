import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffE5D2D2),
            body: Padding(
              padding: const EdgeInsets.only(top: 10, right: 25, left: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 20,
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            color: Color(0xffEA4545),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Discover",
                            style:
                                TextStyle(fontSize: 30, fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(
                        Icons.search,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),

                  //--------------------------------
                  // popular japan moscow london
                  Container(
                    width: 376,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff504949),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "Popular",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text("Japan",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 18,
                        ),
                        Text("Moscow",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 18,
                        ),
                        Text("London",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 370,
                        height: 285,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("images/image1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "Discover more",
                          style: TextStyle(
                            fontFamily: "Pacifico",
                            fontSize: 18,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            // body: Container(child: ),
            ));
  }
}
