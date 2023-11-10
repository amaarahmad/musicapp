import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/rock_component.dart';
class AlbumTab extends StatelessWidget {
  const AlbumTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RockComponent(imgUrl: AppAssets.truthOne,),
            RockComponent(imgUrl: AppAssets.truthTwo,),
          ],
        ),

        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RockComponent(imgUrl: AppAssets.freedomBoy,title: '    Freedom Boy',),
            RockComponent(imgUrl: AppAssets.truthThree,),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RockComponent(imgUrl: AppAssets.truthFour,),
            RockComponent(imgUrl: AppAssets.truthFive,),
          ],
        ),

      ],
    );
  }
}
