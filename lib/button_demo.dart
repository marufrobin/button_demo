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
            //AppBar design here
            customAppBar(),
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
                        // decoration: TextDecoration.lineThrough,
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
                //image position
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

                //discover more
                Positioned(
                  bottom: 0,
                  left: 70,
                  right: 70,
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Discover more",
                      style: TextStyle(
                        // decoration: TextDecoration.lineThrough,
                        fontFamily: "Pacifico",
                        fontSize: 25,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Row customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          size: 20,
        ),
        Container(
          height: 50,
          width: 130,
          child: Stack(
            children: [
              Container(
                height: 25,
                width: 25,
                color: Color(0xffEA4545),
              ),
              Positioned(
                bottom: 8,
                left: 12,
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 30, fontFamily: "Roboto"),
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.search,
          size: 20,
        )
      ],
    );
  }
}
