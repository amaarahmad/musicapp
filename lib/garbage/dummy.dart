// import 'package:flutter/material.dart';
// import 'package:musicapp/style/colors.dart';
// class ScreenSixteen extends StatefulWidget {
//   const ScreenSixteen({super.key});
//
//   @override
//   State<ScreenSixteen> createState() => _ScreenSixteenState();
// }
//
// class _ScreenSixteenState extends State<ScreenSixteen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 10),
//             alignment: Alignment.centerRight,
//             color: wColor,
//             child: Container(
//               color: Colors.blue,
//               child: ClipPath(
//                 clipper: Wave2(),
//                 child: Container(
//                   height: 500,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//
//     );
//   }
// }
// class Wave2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size){
//
//     var path=Path();
//     var point1=Offset(size.width*0.1, size.height*0.6);
//     var point2=Offset(size.width*0.3, size.height*0.25);
//     path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
//     // var point3=Offset(size.width*0.1, size.height*0.6);
//     // var point4=Offset(size.width*0.68, size.height*0.28);
//     // path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
//
//     var point5=Offset(size.width*0.85, size.height*0.4);
//     var point6=Offset(size.width, size.height*0.1);
//     path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);
//
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     throw UnimplementedError();
//   }
//
// }
import 'dart:math';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/style/colors.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Dummy',style: TextStyle(color: wColor),),
      ),
      body:  Column(
        children: [
          // Container(
          //   height: 270,
          //   width: 270,
          //   decoration: BoxDecoration(
          //     color: Colors.black,
          //
          //     borderRadius: BorderRadius.circular(250)
          //   ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Center(
          //         child: CircularStepProgressIndicator(
          //             totalSteps: 100,
          //           currentStep: 65,
          //           stepSize: 2,
          //           unselectedColor: wColor.withOpacity(0.2),
          //           selectedColor: btnColor,
          //           padding: 0,
          //           width: 230,
          //           height: 230,
          //          circularDirection: CircularDirection.clockwise,
          //          child:Image.asset(AppAssets.playerImage),
          //
          //
          //         ),
          //       ),
          //
          //     ],
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SearchComponent(title: 'African',),
          //     SearchComponent(title: 'Asian',),
          //     SearchComponent(title: 'Avantgarde',color: btnColor,),
          //   ],
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SearchComponent(title: 'Blues',),
          //     SearchComponent(title: 'Country',),
          //     SearchComponent(title: 'Electronic'),
          //   ],
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SearchComponent(title: 'Folk',color: btnColor,),
          //     SearchComponent(title: 'Hip Hop',),
          //     SearchComponent(title: 'Jazz'),
          //   ],
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SearchComponent(title: 'Latin'),
          //     SearchComponent(title: 'Lounge',),
          //     SearchComponent(title: 'New Age'),
          //   ],
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     SearchComponent(title: 'Pop'),
          //     SearchComponent(title: 'R&B',color: btnColor,),
          //     SearchComponent(title: 'Rock'),
          //   ],
          // ),

          StepProgressIndicator(
            totalSteps: 100,
            currentStep: 32,
            size: 4,
            padding: 0,
            selectedColor: btnColor,
            unselectedColor: wColor,
            roundedEdges: Radius.circular(10),

          ),

          AudioWave(
            height: 32,
            width: 32,
            spacing: 2.5,
            animationLoop: 3,
            bars: [
              AudioWaveBar(heightFactor: 0.7, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.8, color: Colors.blue),
              AudioWaveBar(heightFactor: 1, color: Colors.black),
              AudioWaveBar(heightFactor: 0.9),
            ],
          ),
          AudioWave(
            height: 32,
            width: 88,
            spacing: 2.5,
            bars: [
              AudioWaveBar(heightFactor: 0.1, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.2, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.3, color: Colors.black),
              AudioWaveBar(heightFactor: 0.4),
              AudioWaveBar(heightFactor: 0.5, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.6, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.7, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.8, color: Colors.black),
              AudioWaveBar(heightFactor: 0.9),
              AudioWaveBar(heightFactor: 1, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.1, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.2, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.3, color: Colors.black),
              AudioWaveBar(heightFactor: 0.4),
              AudioWaveBar(heightFactor: 0.5, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.6, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.7, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.8, color: Colors.black),
              AudioWaveBar(heightFactor: 0.9),
              AudioWaveBar(heightFactor: 1, color: Colors.orange),
            ],
          ),
          AudioWave(
            height: 32,
            width: 88,
            spacing: 2.5,
            alignment: 'top',
            animationLoop: 2,
            beatRate: Duration(milliseconds: 50),
            bars: [
              AudioWaveBar(heightFactor: 0.1, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.2, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.3, color: Colors.black),
              AudioWaveBar(heightFactor: 0.4),
              AudioWaveBar(heightFactor: 0.5, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.6, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.7, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.8, color: Colors.black),
              AudioWaveBar(heightFactor: 0.9),
              AudioWaveBar(heightFactor: 1, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.1, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.2, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.3, color: Colors.black),
              AudioWaveBar(heightFactor: 0.4),
              AudioWaveBar(heightFactor: 0.5, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.6, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.7, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.8, color: Colors.black),
              AudioWaveBar(heightFactor: 0.9),
              AudioWaveBar(heightFactor: 1, color: Colors.orange),
            ],
          ),
          AudioWave(
            height: 32,
            width: 160,
            spacing: 5,
            alignment: 'bottom',
            animationLoop: 2,
            beatRate: Duration(milliseconds: 50),
            bars: [
              AudioWaveBar(heightFactor: 0.2, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.9, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.8, color: Colors.black),
              AudioWaveBar(heightFactor: 0.7),
              AudioWaveBar(heightFactor: 0.6, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.5, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.4, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.3, color: Colors.black),
              AudioWaveBar(heightFactor: 0.2),
              AudioWaveBar(heightFactor: 0.1, color: Colors.orange),
              AudioWaveBar(heightFactor: 1, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.1, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.2, color: Colors.black),
              AudioWaveBar(heightFactor: 0.3),
              AudioWaveBar(heightFactor: 0.4, color: Colors.orange),
              AudioWaveBar(heightFactor: 0.5, color: Colors.lightBlueAccent),
              AudioWaveBar(heightFactor: 0.6, color: Colors.blue),
              AudioWaveBar(heightFactor: 0.7, color: Colors.black),
              AudioWaveBar(heightFactor: 0.8),
              AudioWaveBar(heightFactor: 0.9, color: Colors.orange),
            ],
          ),


        ],
      ),
    );
  }
}

