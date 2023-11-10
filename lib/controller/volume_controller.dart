import 'package:get/get.dart';

class VolumeController extends GetxController {
  RxDouble volume=70.0.obs;

  void onVolumeChanged(double value){
    volume.value=value;
  }

}