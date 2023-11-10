import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class PageViewTwo extends StatelessWidget {
  const PageViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text('Best Albums',style: TextStyle(color: wColor,fontSize: 40),),
        ),
        Icon(Icons.photo_album_rounded,size: 180,color: btnColor,)
      ],
    );
  }
}
