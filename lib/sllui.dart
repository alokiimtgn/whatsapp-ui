import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Container(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 2.0, left: 3, right: 3),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: 245,
                        //color: Colors.black,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 45,
                                      width: 45,
                                      //color: Colors.red[500],
                                      decoration: BoxDecoration(
                                          color: Colors.red[500],
                                          border: Border.all(
                                            color: Colors.red[500],
                                          ),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(30))),
                                      child: Center(
                                          child: Text(
                                            "Live",
                                            style: TextStyle(color: Colors.white),
                                          ))),
                                  Text(
                                    "Sheikh Zayed Stadium,Abu Dhabi",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black, //red[500],
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      // color: Colors.black,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.push_pin,
                                            size: 10.0,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 2.0,
                                                bottom: 2.0,
                                                left: 3.0,
                                                right: 3.0),
                                            child: Text(
                                              "Pin",
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          //SizedBox(width:4 ,)
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              "19th T10 Match Super League, 03-Feb-2021 at",
                              style: TextStyle(fontSize: 10.0, color: Colors.white),
                            ),
                            Text(
                              "05:30PM-Wed",
                              style: TextStyle(fontSize: 10.0, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 54,
                                      width: 54,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.red[500],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Icon(Icons.alarm_rounded),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "INDIA",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            "0/0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3))))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "0.0 ov ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Container(
                                          child: Center(
                                              child: Text(
                                                "VS",
                                                style: TextStyle(color: Colors.white),
                                              )),
                                          width: 34,
                                          height: 34,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                        ),
                                        Text(
                                          " -- ov",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 30,
                                          child: Center(
                                              child: Text(
                                                "46",
                                                style: TextStyle(color: Colors.white),
                                              )),
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 30,
                                          child: Center(
                                              child: Text("48",
                                                  style: TextStyle(
                                                      color: Colors.white))),
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "FAV-QAL",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 54,
                                      width: 54,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.red[500],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Icon(Icons.supervised_user_circle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "INDIA",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            "0/0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3))))
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 14.0),
                              child: Text(
                                "LIVE ON SONY SIX",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )),
      ),
    );
  }
}

/*

enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class QuarterCircle extends StatelessWidget {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCircle({
    this.color = Colors.grey,
    this.circleAlignment = CircleAlignment.topLeft,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ClipRect(
        child: CustomPaint(
          painter: QuarterCirclePainter(
            circleAlignment: circleAlignment,
            color: color,
          ),
        ),
      ),
    );
  }
}

class QuarterCirclePainter extends CustomPainter {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCirclePainter({this.circleAlignment, this.color});



  @override
  void paint(Canvas canvas, Size size) {
    final radius =  123.0;//size.height;
    final offset = circleAlignment == CircleAlignment.topLeft
        ? Offset(.0, .0)
        : circleAlignment == CircleAlignment.topRight
        ? Offset(size.width, .0)
        : circleAlignment == CircleAlignment.bottomLeft
        ? Offset(.0, size.height)
        : Offset(size.width, size.height);
    canvas.drawCircle(offset, radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(QuarterCirclePainter oldDelegate) {
    return color == oldDelegate.color &&
        circleAlignment == oldDelegate.circleAlignment;
  }
}
 */
