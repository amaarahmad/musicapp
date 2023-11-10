import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';

class ScreenButtonComponent extends StatelessWidget {
  String title;
  final VoidCallback onPressed;
   ScreenButtonComponent({super.key,required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: wColor),),
        ),
      ),
    );
  }
}
