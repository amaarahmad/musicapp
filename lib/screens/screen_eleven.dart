import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/rock_component.dart';
import 'package:musicapp/component/tab_button_component.dart';
import 'package:musicapp/controller/album_tab_controller.dart';
import 'package:musicapp/style/colors.dart';
class ScreenEleven extends StatelessWidget {
   ScreenEleven({super.key});

  final AlbumTabController albumTabController=Get.put(AlbumTabController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
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
                  const Text(
                    'Albums',
                    style: TextStyle(
                        color: wColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.search, color: wColor, size: 35),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ROCK STAR',style: TextStyle(color: wColor,fontSize: 28),),

              const SizedBox(
                height: 10,
              ),
              Container(
                height: 53,
                color: wColor.withOpacity(0.1),
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: albumTabController.labels.length,
                    itemBuilder: (context,index){
                      return Obx(() => TabButtonComponent(
                          albumTabController.labels[index], () =>albumTabController.selectedIndex(index),
                          isSelected: index==albumTabController.selectedIndex.value
                      ));
                    },
                  ),
                ),
              ),
              Obx(() => albumTabController.contentScreen[albumTabController.selectedIndex.value])



            
            ],
          ),
        ),
      ),
    );
  }
}
