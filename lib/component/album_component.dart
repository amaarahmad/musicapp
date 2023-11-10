import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/style/colors.dart';

class AlbumComponent extends StatelessWidget {
  String title;
  String subTitle;
  String imgUrl;
   AlbumComponent({super.key,required this.title,required this.subTitle,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(imgUrl),
          backgroundColor: Colors.transparent,
        ),
        Text(title,style: TextStyle(color: wColor,fontSize: 17),),
        Text(subTitle,style: TextStyle(color: wColor.withOpacity(0.4),fontSize: 13),),

      ],
    );
  }
}
