import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/genres_component.dart';
import 'package:musicapp/style/colors.dart';

class ScreenTen extends StatefulWidget {
  const ScreenTen({super.key});

  @override
  State<ScreenTen> createState() => _ScreenTenState();
}

class _ScreenTenState extends State<ScreenTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ()=>Get.back(),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.backArrow,height: 20,color: wColor,),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('Back',style: TextStyle(color: wColor,fontSize: 17),),
                      ],
                    ),
                  ),
                  const Text(
                    'Genres',
                    style: TextStyle(
                        color: wColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.search, color: wColor, size: 35),
                ],
              ),
              Container(
                height: 46,
                width: 343,
                decoration: BoxDecoration(
                    color: containerBg.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: wColor.withOpacity(0.5)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: wColor.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: wColor.withOpacity(0.5),
                      ),
                      border: InputBorder.none),
                ),
              ),
              GenresComponent(
                title: 'Drum & Bass',
                subTitle: '26 tracks',
                imgUrl: AppAssets.drum,
              ),
              GenresComponent(
                title: 'Ambient',
                subTitle: '19 tracks',
                imgUrl: AppAssets.ambient,
              ),
              GenresComponent(
                title: 'Rock',
                subTitle: '36 tracks',
                imgUrl: AppAssets.rock,
              ),
              GenresComponent(
                title: 'Jazz',
                subTitle: '23 tracks',
                imgUrl: AppAssets.jazz,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
