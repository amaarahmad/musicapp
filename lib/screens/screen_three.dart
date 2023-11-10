import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/component/round_button.dart';
import 'package:musicapp/controller/page_controller.dart';
import 'package:musicapp/page_view/mic_page_view.dart';
import 'package:musicapp/page_view/page_view_three.dart';
import 'package:musicapp/page_view/page_view_two.dart';
import 'package:musicapp/screens/screen_four.dart';
import 'package:musicapp/style/colors.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {


  PageControllerView pageControllerView=Get.put(PageControllerView());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'Walkthrough',
          style: TextStyle(color: wColor, fontSize: 17),
        ),
        backgroundColor: Colors.transparent,
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: (){Get.to(ScreenFour());},
              child: Text(
                "Skip",
                style: TextStyle(color: wColor, fontSize: 17),
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PageView.builder(

              controller: pageControllerView.pageController,
              itemCount: pageControllerView.pages.length,
              onPageChanged: (int page) {
                pageControllerView.activePage.value = page;
              },
              itemBuilder: (BuildContext context, int index) {
                return pageControllerView.pages[index];
              }),
          Positioned(

              bottom: 0,
              left: 150,
              right: 0,
              height: 100,
              child:Obx(() =>  Container(
                child: Row(
                  children: List<Widget>.generate(
                      pageControllerView.pages.length,
                          (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: (){
                            pageControllerView.pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: pageControllerView.activePage==index?wColor:wColor.withOpacity(0.5),
                          ),
                        ),
                      )
                  ),
                ),
              ))
          )
        ],
      ),
    );
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// CircleAvatar(
// radius: 4,
// backgroundColor: wColor.withOpacity(0.2),
// ),
// const SizedBox(
// width: 10,
// ),
// CircleAvatar(
// radius: 4,
// backgroundColor: wColor.withOpacity(0.2),
// ),
// const SizedBox(
// width: 10,
// ),
// const CircleAvatar(
// radius: 4,
// backgroundColor: wColor,
// ),
// ],
// )
