import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';


class MediaMetaDeta extends StatelessWidget {

  final String title;
  final String artist;
  const MediaMetaDeta({super.key, required this.title,required this.artist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(title,style: TextStyle(
            color: wColor.withOpacity(0.5),
            fontSize: 15,
            fontWeight: FontWeight.bold
        ),textAlign: TextAlign.center,

        ),
        SizedBox(
          height: 20,
        ),
        Text(artist,style: TextStyle(
            color: wColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),textAlign: TextAlign.center,

        ),
      ],
    );
  }
}