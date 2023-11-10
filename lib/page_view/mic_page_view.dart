import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/component/round_button.dart';
import 'package:musicapp/screens/screen_four.dart';
import 'package:musicapp/style/colors.dart';

class MicPageView extends StatelessWidget {
  const MicPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Search with Voice',
              style: TextStyle(fontSize: 28, color: wColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Service will identify any music\n          playing around you',
              style: TextStyle(fontSize: 17, color: wColor),
            ),
          ],
        ),
        CircleAvatar(
          radius: 80,
          backgroundColor: btnColor.withOpacity(0.2),
          child: CircleAvatar(
            radius: 75,
            backgroundColor: btnColor,
            child: Image.asset('assets/mic.png'),
          ),
        ),
        RoundButton(
          onPressed: (){
            Get.to(ScreenFour());
          },
          title: 'Get Started',
        ),
      ],
    );
  }
}
