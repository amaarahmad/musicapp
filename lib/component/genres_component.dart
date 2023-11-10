import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/style/colors.dart';

class GenresComponent extends StatelessWidget {
  String title;
  String subTitle;
  String imgUrl;
   GenresComponent({super.key,required this.title,required this.subTitle,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 145,
      width: 346,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgUrl),fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(color: wColor,fontSize: 24),),
          Text(subTitle,style: TextStyle(color: wColor.withOpacity(0.5),fontSize: 11,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
