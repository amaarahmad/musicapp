import 'package:get/get.dart';

class BitRateController extends GetxController {
  RxInt selectedIndex=2.obs;

  List<String>content=[
    '128 kb/s',
    '256 kb/s',
    '320 kb/s',
  ];

  void onPressed(int value){
    selectedIndex.value=value;
}

}