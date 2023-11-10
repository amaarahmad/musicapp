import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/garbage/dummy.dart';
import 'package:musicapp/garbage/dummy_music.dart';
import 'package:musicapp/garbage/dummy_tabs.dart';
import 'package:musicapp/screens/home_screen.dart';
import 'package:musicapp/screens/screen_nine.dart';
import 'package:musicapp/screens/screen_sixteen.dart';
import 'package:musicapp/screens/screen_three.dart';
import 'package:sizer/sizer.dart';


import 'garbage/slider_check.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Sizer(builder: (context,orientation,deviceType){
        return GetMaterialApp(
          title: 'Music App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Monte',

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:  ScreenThree(),
        );
      }),
    );
  }
}
