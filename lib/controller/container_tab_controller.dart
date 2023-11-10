import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/style/colors.dart';
import 'package:musicapp/tab_screen/card_screen.dart';
import 'package:musicapp/tab_screen/paypal_screen.dart';

class ContainerTabController extends GetxController{
final ScrollController scrollController=ScrollController();
RxInt selectedIndex=1.obs;
List<String>containerLabels=[
  'Card',
  'PayPal',
  'ApplePay',
];
List<Widget>contentWidgets=[
 CardScreen(),
  PaypalScreen(),
  Center(child: Text('ApplePay',style: TextStyle(color: wColor),)),
];

void scrollPosition(double position){
scrollController.animateTo(position, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
}
void containerPressed(int index){
selectedIndex.value=index;
//scrollPosition(index*100);
}


}