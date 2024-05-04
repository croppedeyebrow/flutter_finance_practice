import 'package:flutter/material.dart';
import 'package:flutter_financeapp_ui_practice_1/colors.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primary,
              boxShadow: [
                BoxShadow(
                    color: grey.withOpacity(0.04),
                    spreadRadius: 10,
                    blurRadius: 4)
              ],
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Icon(Icons.search),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.only(right: 26, left: 26, bottom: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "최근 자금 변경 내역",
                    style: TextStyle(
                        color: mainFontColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: mainFontColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 20, right: 24, left: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 26, right: 26, top: 5, bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          color: buttoncolor,
                          borderRadius: BorderRadius.circular(26)),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
