import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';

class TabButtonComponent extends StatelessWidget {
  String title;
  final VoidCallback onPressed;
  final isSelected;
   TabButtonComponent(this.title,this.onPressed,{required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

        onTap:onPressed,
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Center(child: Text(title,style: TextStyle(color: isSelected?btnColor:wColor.withOpacity(0.5),fontSize: 17),)),
        ));
  }
}
