import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';

class RoundButton extends StatelessWidget {
  double? height;
  double? width;
  String? title;
  Color? color;
  final VoidCallback? onPressed;
   RoundButton({super.key,this.title,this.height,this.width,this.color,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height??44,
        width: width??171,
        decoration: BoxDecoration(
          color: color??btnColor,
          borderRadius: BorderRadius.circular(22)
        ),
        child: Center(
          child: Text(title!,style: TextStyle(
            color: wColor,
            fontSize: 15
          ),),
        ),
      ),
    );
  }
}
