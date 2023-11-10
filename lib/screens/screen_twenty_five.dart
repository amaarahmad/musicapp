import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/container_button_tab.dart';
import 'package:musicapp/controller/container_tab_controller.dart';
import 'package:musicapp/style/colors.dart';
class ScreenTwentyFive extends StatefulWidget {
  const ScreenTwentyFive({super.key});

  @override
  State<ScreenTwentyFive> createState() => _ScreenTwentyFiveState();
}

class _ScreenTwentyFiveState extends State<ScreenTwentyFive> {
  final ContainerTabController controller=Get.put(ContainerTabController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: ()=>Get.back(),
                  child: Row(
                    children: [
                      Image.asset(AppAssets.backArrow,height: 20,color: wColor,),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Back',style: TextStyle(color: wColor,fontSize: 17),),
                    ],
                  ),
                ),
                Text('Payment',style: TextStyle(color: wColor,fontSize: 17,fontWeight: FontWeight.bold),),
                Text('           ',style: TextStyle(color: wColor,fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 35),

              width: double.infinity,
              child: ListView.builder(
                controller: controller.scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.containerLabels.length,
                  itemBuilder: (context,index){
                  return Obx(() => ContainerButton(controller.containerLabels[index]
                      , () =>controller.containerPressed(index),
                      isSelected: index==controller.selectedIndex.value));

                  }),
            ),
            const SizedBox(
              height: 50,
            ),

            Obx(()=>controller.contentWidgets[controller.selectedIndex.value])

          ],
        ),
      ),
    );
  }
}
