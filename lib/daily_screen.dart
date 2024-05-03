import 'package:flutter/material.dart';
import 'package:flutter_financeapp_ui_practice_1/colors.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({super.key});

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 12),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.14),
                      spreadRadius: 12,
                      blurRadius: 4)
                ]),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 26, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.bar_chart), Icon(Icons.more_vert)],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        height: 88,
                        width: 88,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/profile.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 20),
                      Container(
                          width: (size.width - 40) * 0.6,
                          child: Column(
                            children: [
                              Text(
                                "코딩지휘소",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: mainFontColor),
                              ),
                              SizedBox(height: 20),
                              Text(
                                " 안드로이드 개발자",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                              ),
                            ],
                          ))
                    ],
                  ),
                  SizedBox(height: 54),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\₩400000000 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Total Revenue ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: black),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
