import 'package:example_flutter1/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: Container(
        padding: EdgeInsets.only(
          top: Get.mediaQuery.padding.top,
          bottom: Get.mediaQuery.padding.bottom,
        ),
        width: Get.width,
        // column screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // top widget
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: Get.height * 0.1,
                  ),
                  // column logo
                  child: logo(),
                ),
                Container(
                  width: Get.width * 0.8,
                  height: 44,
                  margin: EdgeInsets.only(
                    top: Get.height * 0.1,
                  ),
                  child: loginButton(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // left widget - need help
                  Row(
                    children: [
                      Text(
                        "ต้องการความช่วยเหลือ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "คลิก",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/thai-flag.png",
                    width: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton loginButton() {
    return ElevatedButton(
      child: Text(
        "เข้าใช้งาน",
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
      ),
      onPressed: () {},
    );
  }

  Column logo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Kept",
          style: TextStyle(
            color: Colors.white,
            fontSize: 64,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          "by krungsri",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
