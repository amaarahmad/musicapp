import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/page_view/mic_page_view.dart';
import 'package:musicapp/page_view/page_view_three.dart';
import 'package:musicapp/page_view/page_view_two.dart';

class PageControllerView extends GetxController{
 final PageController pageController=PageController();
  RxInt activePage = 0.obs;
  final List<Widget> pages = [
    PageViewTwo(),
    PageViewThree(),
    MicPageView(),
  ];

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    pageController.dispose();
  }


}


