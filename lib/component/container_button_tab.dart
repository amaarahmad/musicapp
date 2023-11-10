import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class ContainerButton extends StatelessWidget {
  String?text;
  final VoidCallback onPressed;
final bool isSelected;
   ContainerButton(this.text,this.onPressed,{required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 44,
        width: 107,
        margin: EdgeInsets.only(left: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:isSelected?btnColor:Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color:isSelected?btnColor:wColor.withOpacity(0.5),
            width: 1,
            style: BorderStyle.solid
          ),
        ),
        child: Text(text!,style: TextStyle(color: wColor),),
      ),
    );
  }
}
