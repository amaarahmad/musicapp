import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/artist_images_component.dart';
import 'package:musicapp/component/tracklist_component.dart';
import 'package:musicapp/controller/switch_button_controller.dart';
import 'package:musicapp/screens/screen_sixteen.dart';
import 'package:musicapp/style/colors.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
class ScreenFifteen extends StatefulWidget {
   const ScreenFifteen({super.key});

  @override
  State<ScreenFifteen> createState() => _ScreenFifteenState();
}

class _ScreenFifteenState extends State<ScreenFifteen> {
   SwitchButtonController switchButtonController=Get.put(SwitchButtonController());

   bool isButtonOn=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
              height: 20,
            ),
            SizedBox(
              height: 122,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.playlist),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Night Bar\nBoutique Vol.13',style: TextStyle(color: wColor,fontSize: 22),),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('163 Tracks',style: TextStyle(color: wColor,fontSize: 17),),
                              Text('Chillout, deep, rock...',style: TextStyle(color: wColor.withOpacity(0.5),fontSize: 13),)
                            ],
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(ScreenSixteen());
                            },
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: btnColor,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: const Center(
                                child: Text('Play',style: TextStyle(color: wColor),),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tracklist',style: TextStyle(color: wColor,fontSize: 17),),
                  Text('Shuffle',style: TextStyle(color: wColor,fontSize: 17),),
                ],
              ),
            ),
            Divider(
              color: wColor.withOpacity(0.3),
              thickness: 0.4,
            ),
            TrackListComponent(title: 'The Crunge',time: '7:59',),
            Container(
              margin: const EdgeInsets.only(top: 30,left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){



                          setState(() {
                            if(isButtonOn==true){
                              isButtonOn=false;

                            }
                            else{
                              isButtonOn=true;

                            }

                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: isButtonOn? btnColor:wColor,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:isButtonOn?
                          Center(child: Image.asset(AppAssets.pauseIcon)):Center(child: Image.asset(AppAssets.playIcon)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 300,
                    child:isButtonOn? const StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 42,
                      size: 4,
                      padding: 0,
                      selectedColor: btnColor,
                      unselectedColor: wColor,
                      roundedEdges: Radius.circular(10),

                    ):Text('Love me like you do',style: TextStyle(color: wColor),),
                  ),
                  Text('4:15',style: TextStyle(color: wColor.withOpacity(0.5),fontSize: 15),),
                ],
              ),
            ),

            TrackListComponent(title: "D'yer Mak'er",time: '3:48',),
            TrackListComponent(title: 'No Quarter',time: '6:15',),
            TrackListComponent(title: 'The Ocean',time: '4:30',),
            TrackListComponent(title: 'The Rain Song',time: '5:12',),
            TrackListComponent(title: "D'yer Mak'er",time: '3:48',),
            Divider(
              color: wColor.withOpacity(0.3),
              thickness: 0.4,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),

              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Artist in Playlist',style: TextStyle(color: wColor,fontSize: 17),),
                  Text('See All',style: TextStyle(color: wColor,fontSize: 17),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ArtistImageComponent(imgUrl: AppAssets.artistOne),
                  ArtistImageComponent(imgUrl: AppAssets.artistTwo),
                  ArtistImageComponent(imgUrl: AppAssets.artistThree),
                  ArtistImageComponent(imgUrl: AppAssets.artistFour),
                  ArtistImageComponent(imgUrl: AppAssets.artistFive),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
