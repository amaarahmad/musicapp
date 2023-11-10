import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/round_button.dart';
import 'package:musicapp/screens/screen_nine.dart';

import '../style/colors.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    final topHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(

          image: DecorationImage(image: AssetImage(AppAssets.bgPic),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   Image.asset(AppAssets.backArrow,height: 20,color: wColor,),
                   SizedBox(
                     width: 10,
                   ),
                   Text('Back',style: TextStyle(color: wColor,fontSize: 17),),
                 ],
               ),
                Text('Sign in',style: TextStyle(color: wColor,fontSize: 17,fontWeight: FontWeight.bold),),
                Text('           ',style: TextStyle(color: wColor,fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
          Image.asset('assets/music.png'),
            const SizedBox(
              height: 20,
            ),
          const Text('LOVEMUSIC',style: TextStyle(color: wColor,fontSize: 27),),

          const SizedBox(
            width: 301,
            child: TextField(
              cursorColor: wColor,
              style: TextStyle(color: wColor),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: wColor),
              ),
            ),
          ),
          const SizedBox(
            width: 301,
            child: TextField(
              obscureText: true,
              cursorColor: wColor,
              style: TextStyle(color: wColor),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: wColor),
              ),
            ),
          ),
            const SizedBox(
              height: 40,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(

                    border: Border.all(
                        color: wColor
                    ),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Image.asset(AppAssets.fb),
              ),
              SizedBox(
                width: 10,
              ),
              RoundButton(
                onPressed: (){
                  Get.to(ScreenNine());
                },
                title: 'Sign in',color: btnColorTwo,height: 44,width: 171,),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(

                    border: Border.all(
                        color: wColor.withOpacity(0.7)
                    ),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Image.asset(AppAssets.twitter),
              ),
            ],
          ),
            const SizedBox(
              height: 20,
            ),
          Text('Forget Your Password?',style: TextStyle(color: wColor,fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
