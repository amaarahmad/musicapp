import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';

import '../app_assets.dart';
class TrackListComponent extends StatelessWidget {
  String title;
  String time;
  TrackListComponent({super.key,required this.title,required this.time});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 25,left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Image.asset(AppAssets.playIcon)),
              ),
              SizedBox(
                width: 10,
              ),
              Text(title,style: TextStyle(color: wColor,fontSize: 16),),
            ],
          ),
          Text(time,style: TextStyle(color: wColor.withOpacity(0.5),fontSize: 15),),
        ],
      ),
    );
  }
}
