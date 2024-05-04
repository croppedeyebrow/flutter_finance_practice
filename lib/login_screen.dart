import 'package:flutter/material.dart';
import 'package:flutter_financeapp_ui_practice_1/colors.dart';
import 'package:flutter_financeapp_ui_practice_1/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController(text: "이메일을 입력하세요");
  TextEditingController _password = TextEditingController(text: "123456");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
          child: Column(
        children: [
          SizedBox(height: 60),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/money.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 112),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 7,
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "이메일 주소",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff67727d)),
                    ),
                    TextField(
                      controller: _email,
                      cursorColor: black,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: black,
                        hintText: "이메일 주소를 입력하세요",
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 20),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 7,
                  )
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "비밀번호",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff67727d)),
                    ),
                    TextField(
                      obscureText: true,
                      controller: _password,
                      cursorColor: black,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        prefixIconColor: black,
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        suffixIconColor: black,
                        hintText: "비밀번호를 입력하세요",
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              print("로그인버튼클릭");
            },
            child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 26),
                decoration: BoxDecoration(
                  color: buttoncolor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                )),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "회원가입",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 20),
                Text(
                  "비밀번호 찾기",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
