import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class ArtistTab extends StatelessWidget {
  const ArtistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Artist',style: TextStyle(color: wColor),),
    );
  }
}
