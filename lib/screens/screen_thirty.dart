import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/button_component.dart';
import 'package:musicapp/component/search_component.dart';
import 'package:musicapp/controller/bitrate_controller.dart';
import 'package:musicapp/garbage/dummy_tabs.dart';
import 'package:musicapp/screens/screen_fifteen.dart';
import 'package:musicapp/screens/screen_sixteen.dart';
import 'package:musicapp/style/colors.dart';
import 'package:sizer/sizer.dart';
class ScreenThirty extends StatelessWidget {
   ScreenThirty({super.key});
  BitRateController bitRateController=Get.put(BitRateController());
  final searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
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
                          const Text('Search',style: TextStyle(color: wColor,fontSize: 17,fontWeight: FontWeight.bold),),
                          const Text('Clean',style: TextStyle(color: wColor,fontSize: 17),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('LOCATION',style: TextStyle(fontSize: 13,color: wColor),),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('United States',style: TextStyle(fontSize: 17,color: wColor),),
                          Text('Edit',style: TextStyle(fontSize: 17,color: wColor),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('New York',style: TextStyle(fontSize: 17,color: wColor),),
                          Text('Edit',style: TextStyle(fontSize: 17,color: wColor),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('GENRES',style: TextStyle(fontSize: 13,color: wColor),),
                      const SizedBox(
                        height: 20,
                      ),
                      MultiSelectTabs(),





                      const SizedBox(
                        height: 10,
                      ),
                      const Text('BITRATE',style: TextStyle(fontSize: 13,color: wColor),),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 54,

                        child: ListView.builder(
                            itemCount: bitRateController.content.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Obx(() => SearchComponent(bitRateController.content[index],
                                      () =>bitRateController.onPressed(index),
                                  isSelected: index==bitRateController.selectedIndex.value));

                            }),
                      ),





                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     SearchComponent(title: '128 Kb/s',),
                      //     SearchComponent(title: '256 Kb/s',),
                      //     SearchComponent(title: '320 Kb/s',color: btnColor,),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('KEY WORDS',style: TextStyle(fontSize: 13,color: wColor),),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 34.h,
                            height: 20,
                            child: TextField(
                              controller: searchController,
                              style: const TextStyle(color: wColor),
                              decoration: const InputDecoration(




                              ),
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                searchController.clear();
                              },
                              child: Image.asset(AppAssets.cross))

                        ],
                      ),






                    ],
                  ),
                ),
                Center(child: PaymentButton(onPressed:(){
                  Get.to(const ScreenFifteen());
                },title: 'Search'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
