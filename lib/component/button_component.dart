import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';
class PaymentButton extends StatelessWidget {
  String title;
  final VoidCallback? onPressed;
  PaymentButton({super.key,required this.title,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 44,
        width: 343,
        decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child:  Center(
          child: Text(title,style: TextStyle(color: wColor,fontWeight: FontWeight.bold,fontSize: 15),),
        ),
      ),
    );
  }
}
