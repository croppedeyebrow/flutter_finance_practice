import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_financeapp_ui_practice_1/colors.dart';
import 'package:icon_badge/icon_badge.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({Key? key});

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
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
                    children: [
                      Icon(Icons.bar_chart),
                      Icon(Icons.more_vert),
                    ],
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
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
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
                            "Total Income ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: black),
                          )
                        ],
                      ),
                      Container(
                        width: 0.6,
                        height: 60,
                        color: black.withOpacity(0.4),
                      ),
                      Column(
                        children: [
                          Text(
                            "\₩28500000 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Total Expense ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: black),
                          )
                        ],
                      ),
                      Container(
                        width: 0.6,
                        height: 60,
                        color: black.withOpacity(0.4),
                      ),
                      Column(
                        children: [
                          Text(
                            "\₩5000000 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Total Loan ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: black),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: mainFontColor),
                        ),
                        // IconBadge(
                        //   icon: Icon(Icons.notifications_outlined),
                        //   itemCount: 3,
                        //   badgeColor: Colors.purple,
                        //   itemColor: white,
                        //   hideZero: true,
                        //   top: -1,
                        //   onTap: () {
                        //     print('tapped');
                        //   },
                        // )
                      ],
                    ),
                  ],
                ),
                Text(
                  "May 03, 2024",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: mainFontColor),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 20, left: 26, right: 26),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.04),
                              spreadRadius: 12,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 22,
                            right: 22,
                            bottom: 12,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  color: arrowbgColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sent",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "고객에게 송금",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "\₩450000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.redAccent),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 12, left: 24, right: 24, bottom: 12),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(26),
                            boxShadow: [
                              BoxShadow(
                                  color: grey.withOpacity(0.04),
                                  spreadRadius: 12,
                                  blurRadius: 4)
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 22,
                            right: 22,
                            bottom: 12,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                    color: arrowbgColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Icon(Icons.arrow_downward_rounded),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  width: (size.width - 40) * 0.6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Receive",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: black),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "월급 입금",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "\₩5500000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 12, left: 24, right: 24, bottom: 12),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                              color: grey.withOpacity(0.04),
                              spreadRadius: 12,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 22,
                            right: 22,
                            bottom: 12,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: arrowbgColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Icon(Icons.money),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  width: (size.width - 40) * 0.6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Loan",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "카드값",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: black.withOpacity(0.5),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "\₩1500000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
