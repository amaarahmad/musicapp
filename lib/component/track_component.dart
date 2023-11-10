import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/screens/screen_twenty_five.dart';
import 'package:musicapp/style/colors.dart';
class TrackComponent extends StatelessWidget {
  String title;
  String subTitle;
  String imgUrl;
  String price;


  TrackComponent({required this.title,
    required this.subTitle,required this.imgUrl,
    required this.price,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Row(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: CircleAvatar(

                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(imgUrl),
              ),
              title: Text(title,style: TextStyle(color: wColor,fontSize: 17),),
              subtitle: Text(subTitle,style: TextStyle(color: wColor.withOpacity(0.5),fontSize: 15),),


            ),
          ),
          Image.asset(AppAssets.path),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: (){Get.to(ScreenTwentyFive());},
            child: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                color: btnColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(price,style: TextStyle(color: wColor,fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
