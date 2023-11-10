import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/style/colors.dart';

class CardComponent extends StatelessWidget {
  String imageUrl;
  CardComponent({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 220,
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        CircleAvatar(
        radius: 37,
        backgroundColor: Colors.transparent,


        backgroundImage: AssetImage(imageUrl),
      ),
     const Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Artist Name',style: TextStyle(color: wColor,fontSize: 15),),
         Text('The most powerful artist from\naround the world',style: TextStyle(color: wColor,fontSize: 8))
       ],
     )
        ],
      )
    );
  }
}
