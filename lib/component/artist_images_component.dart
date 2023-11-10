import 'package:flutter/material.dart';
class ArtistImageComponent extends StatelessWidget {
  String imgUrl;
  ArtistImageComponent({super.key,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imgUrl);
  }
}
