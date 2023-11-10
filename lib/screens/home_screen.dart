import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/component/screen_button_component.dart';
import 'package:musicapp/screens/screen_eleven.dart';
import 'package:musicapp/screens/screen_fifteen.dart';
import 'package:musicapp/screens/screen_four.dart';
import 'package:musicapp/screens/screen_nine.dart';
import 'package:musicapp/screens/screen_sixteen.dart';
import 'package:musicapp/screens/screen_ten.dart';
import 'package:musicapp/screens/screen_thirty.dart';
import 'package:musicapp/screens/screen_three.dart';
import 'package:musicapp/screens/screen_twenty_five.dart';
import 'package:musicapp/style/colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Screens',style: TextStyle(color: wColor),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScreenButtonComponent(title: 'Screen 3',onPressed: (){
                Get.to(ScreenThree());
              },),
              ScreenButtonComponent(title: 'Screen 4',onPressed: (){
                Get.to(ScreenFour());
              },),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScreenButtonComponent(title: 'Screen 9',onPressed: (){
                Get.to(ScreenNine());
              },),
              ScreenButtonComponent(title: 'Screen 10',onPressed: (){
                Get.to(ScreenTen());
              },),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScreenButtonComponent(title: 'Screen 11',onPressed: (){
                Get.to(ScreenEleven());
              },),
              ScreenButtonComponent(title: 'Screen 15',onPressed: (){
                Get.to(ScreenFifteen());
              },),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScreenButtonComponent(title: 'Screen 16',onPressed: (){
                Get.to(ScreenSixteen());

              },),
              ScreenButtonComponent(title: 'Screen 25',onPressed: (){
                Get.to(ScreenTwentyFive());
              },),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScreenButtonComponent(title: 'Screen 26',onPressed: (){
              },),
              ScreenButtonComponent(title: 'Screen 30',onPressed: (){
                Get.to(ScreenThirty());
              },),
            ],
          ),
        ],
      ),
    );
  }
}
