import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/style/colors.dart';

class PopularComponent extends StatelessWidget {
  String title;
  String subTitle;
  String imgUrl;
  PopularComponent({super.key,required this.title,required this.subTitle,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(imgUrl),
          Text(title,style: TextStyle(color: wColor,fontSize: 17),),
          Text(subTitle,style: TextStyle(color: wColor.withOpacity(0.4),fontSize: 13),),

        ],
      ),
    );
  }
}
