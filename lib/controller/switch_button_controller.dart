import 'package:get/get.dart';

class SwitchButtonController extends GetxController {

  RxBool isButtonOn=false.obs;

  void setButton(bool value){
    isButtonOn.value=value;
  }

}