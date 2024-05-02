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
