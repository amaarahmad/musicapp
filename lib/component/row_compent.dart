import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class RowComponent extends StatelessWidget {
  String titleOne;
  String titleTwo;
  Color? color;
  final VoidCallback? onPressed;

   RowComponent({super.key,required this.titleOne,required this.titleTwo,this.color,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titleOne,style: TextStyle(color: wColor,fontSize: 17),),
          InkWell(
            onTap: onPressed,

              child: Text(titleTwo,style: TextStyle(color: color??wColor,fontSize: 17),)),
        ],
      ),
    );
  }
}
