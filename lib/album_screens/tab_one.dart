import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class TabOne extends StatelessWidget {
  const TabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Playlist',style: TextStyle(color: wColor),),
    );
  }
}
