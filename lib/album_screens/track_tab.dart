import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class TrackTab extends StatelessWidget {
  const TrackTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Track ',style: TextStyle(color: wColor),),
    );
  }
}
