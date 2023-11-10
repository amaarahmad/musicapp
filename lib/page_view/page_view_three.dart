import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class PageViewThree extends StatelessWidget {
  const PageViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
      children: [
        Center(
          child: Text('Classic Music',style: TextStyle(color: wColor,fontSize: 40),),
        ),
        Icon(Icons.thumbs_up_down,size: 180,color: btnColor,)
      ],
    );
  }
}
