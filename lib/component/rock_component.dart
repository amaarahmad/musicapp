import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';

import '../app_assets.dart';
class RockComponent extends StatelessWidget {
  String imgUrl;
  String?title;
   RockComponent({super.key,required this.imgUrl,this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 220,
      width: 164,
      decoration: BoxDecoration(
          color: containerBg.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Image.asset(imgUrl),
          SizedBox(
            height: 10,
          ),
          Text(title??'    Truth is Beautiful...',style: TextStyle(color: wColor,fontSize: 13),),
          Text('     London Grammer',style: TextStyle(color: wColor,fontSize: 10),),
        ],
      ),
    );
  }
}
