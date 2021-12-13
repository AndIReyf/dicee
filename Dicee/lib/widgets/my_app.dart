import 'package:dicee/widgets/text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'expanded_btn.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftIcon = 1;
  int rightIcon = 1;
  int one = 0;
  int two = 0;
  int three = 0;
  int four = 0;
  int five = 0;
  int six = 0;
  int total = 0;

  void handlePressed() {
    setState(() {
      leftIcon = Random().nextInt(6) + 1;
      rightIcon = Random().nextInt(6) + 1;
      total += 1;

      countTotalNumber(leftIcon, rightIcon);
    });
  }

  void countTotalNumber(leftNum, rightNum) {
    if (leftNum == 1) one += 1;
    if (rightNum == 1) one += 1;

    if (leftNum == 2) two += 1;
    if (rightNum == 2) two += 1;

    if (leftNum == 3) three += 1;
    if (rightNum == 3) three += 1;

    if (leftNum == 4) four += 1;
    if (rightNum == 4) four += 1;

    if (leftNum == 5) five += 1;
    if (rightNum == 5) five += 1;

    if (leftNum == 6) six += 1;
    if (rightNum == 6) six += 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          centerTitle: true,
          title: const Text(
            "Dicee",
            style: TextStyle(
              color: Colors.lightGreen,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MyText("One was dropped:", one),
                        MyText("Two was dropped:", two),
                        MyText("Three was dropped:", three),
                        MyText("Four was dropped:", four),
                        MyText("Five was dropped:", five),
                        MyText("Six was dropped:", six),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(top: 30.0),
                          color: Colors.black38,
                            child: MyText("Total try:", total),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  ExpandedBtn(onPressed: handlePressed, icon: leftIcon),
                  ExpandedBtn(onPressed: handlePressed, icon: rightIcon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
