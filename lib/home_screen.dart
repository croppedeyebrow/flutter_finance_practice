import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_financeapp_ui_practice_1/colors.dart';
import 'package:flutter_financeapp_ui_practice_1/daily_screen.dart';
import 'package:flutter_financeapp_ui_practice_1/login_screen.dart';
import 'package:flutter_financeapp_ui_practice_1/transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    DailyScreen(),
    TransactionScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 4),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: buttoncolor,
            onPressed: () {},
            child: Icon(Icons.add, size: 26),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

//위젯설정.

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      Icons.home,
      Icons.credit_card,
      Icons.money,
      Icons.person,
    ];

    return AnimatedBottomNavigationBar(
      backgroundColor: primary,
      onTap: (index) {
        setTabs(index);
      },
      icons: iconItems,
      splashColor: secondary,
      inactiveColor: black.withOpacity(0.4),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 12,
      iconSize: 24,
      rightCornerRadius: 10,
      elevation: 2,
    );
  }

  setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
