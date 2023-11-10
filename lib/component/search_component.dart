import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class SearchComponent extends StatelessWidget {
  String title;
  final VoidCallback onPressed;
  final bool isSelected;
  SearchComponent(this.title,this.onPressed,{required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 44,
        width: 108,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: isSelected?btnColor:Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color:isSelected?btnColor: wColor.withOpacity(0.2)
            )
        ),
        child: Center(
          child: Text(title,style: TextStyle(color:wColor),),
        ),
      ),
    );
  }
}
