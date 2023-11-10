import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/controller/volume_controller.dart';
import 'package:musicapp/music/control.dart';
import 'package:musicapp/music/media_meta_data.dart';
import 'package:musicapp/screens/screen_twenty_five.dart';
import 'package:musicapp/style/colors.dart';
import 'package:rxdart/rxdart.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class PositionData {
  final Duration position;
  final Duration bufferedPosition;

  PositionData(this.position, this.bufferedPosition, this.duration);

  final Duration duration;
}
class ScreenSixteen extends StatefulWidget {
  const ScreenSixteen({super.key});

  @override
  State<ScreenSixteen> createState() => _ScreenSixteenState();
}

class _ScreenSixteenState extends State<ScreenSixteen> {
  VolumeController volumeController=Get.put(VolumeController());
  late AudioPlayer audioPlayer;
  final _playlist=ConcatenatingAudioSource(children: [
    AudioSource.asset('assets/audio.mp3',
        tag: const MediaItem(id: '0',
          title: 'Classic',
          artist: 'Mela Loot liya',
          // artUri: Uri.parse("https://unsplash.com/photos/a-woman-with-green-hair-sitting-at-a-table-BS6hKOx02ig")
        )
    ),
    AudioSource.asset('assets/chale.mp3',
        tag: const MediaItem(id: '1',
          title: 'Slow & Reverb',
          artist: 'Chale ana',
          // artUri:Uri.file('assets/band.png')
        )
    ),
    AudioSource.asset('assets/chale.mp3',
        tag: const MediaItem(id: '2',
          title: 'Romantic',
          artist: 'Tum bin',
          // artUri:Uri.file('assets/band.png')
        )
    ),
    AudioSource.asset('assets/chale.mp3',
        tag: const MediaItem(id: '1',
          title: 'Jazz',
          artist: 'Ignite',
          // artUri:Uri.file('assets/band.png')
        )
    ),

  ]);

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration,Duration,Duration?,PositionData>(
      audioPlayer.positionStream,
      audioPlayer.bufferedPositionStream,
      audioPlayer.durationStream,
          (position, bufferedPosition, duration) =>
          PositionData(position, bufferedPosition, duration ?? Duration.zero));

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer = AudioPlayer();
    _init();
  }
  Future<void>_init()async{
    await audioPlayer.setLoopMode(LoopMode.all);
    await audioPlayer.setAudioSource(_playlist);
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    print('Rebuild');
    return Scaffold(
      drawer: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      appBar: AppBar(
        backgroundColor: btnColor,
        title: const Text(
          'Player',
          style: TextStyle(
              color: wColor, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: wColor),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text(
              'Lyrics',
              style: TextStyle(
                  color: wColor, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      backgroundColor: bgColor,
      body: Column(
        children: [
          Container(
            //color: wColor,
            height: heigth * 0.4,
            child: Stack(
              children: [
                Image.asset(
                  AppAssets.pathTwo,
                  fit: BoxFit.cover,
                  height: heigth * 0.31,
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 70),
                    height: 249,
                    width: 249,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(150)),
                    child: Stack(
                      children: [

                        Obx(() => Container(
                          height: 299,
                          width: 299,
                          child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(minimum: 0,
                                  maximum: 100,
                                  startAngle: 270,
                                  endAngle: 270,
                                  showLabels: false,
                                  showTicks: false,
                                  radiusFactor: 0.9,
                                  axisLineStyle: AxisLineStyle(
                                      cornerStyle: CornerStyle.bothFlat,
                                      color: wColor.withOpacity(0.3),
                                      thickness: 2),
                                  pointers: <GaugePointer>[
                                    RangePointer(
                                      value: volumeController.volume.value,
                                      cornerStyle: CornerStyle.bothFlat,
                                      width: 2,
                                      sizeUnit: GaugeSizeUnit.logicalPixel,
                                      color:  btnColor,

                                    ),
                                    MarkerPointer(
                                        value: volumeController.volume.value,
                                        enableDragging: true,
                                        onValueChanged: volumeController.onVolumeChanged,
                                        markerHeight: 6,
                                        markerWidth: 6,
                                        markerType: MarkerType.circle,
                                        color: btnColor,
                                        borderWidth: 8,
                                        borderColor:btnColor)
                                  ],
                                )
                              ]
                          ),
                        )),

                         Center(child: Image.asset(AppAssets.playerImage)),

                      ],
                    ),
                  ),
                ),

                // Image.asset(AppAssets.pathTwo)
              ],
            ),
          ),
          Container(
            height: heigth * 0.49,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StreamBuilder(
                    stream: audioPlayer.sequenceStateStream,
                    builder: (context,snapshot){
                      final state=snapshot.data;
                      if(state?.sequence.isEmpty??true){
                        return SizedBox();

                      }
                      final metaData=state!.currentSource!.tag as MediaItem;
                      return MediaMetaDeta(title: metaData.title, artist: metaData.artist??'');

                    }),

                StreamBuilder<PositionData>(
                    stream: _positionDataStream,
                    builder: (context,snapshot){
                      final positionData=snapshot.data;
                      return ProgressBar(
                        barHeight: 5,
                        baseBarColor: wColor,
                        thumbColor: btnColor,
                        bufferedBarColor: btnColor.withOpacity(0.5),
                        progressBarColor: btnColor,
                        timeLabelTextStyle: const TextStyle(
                            color: wColor
                        ),
                        progress: positionData?.position??Duration.zero,
                        buffered:positionData?.bufferedPosition??Duration.zero ,
                        total: positionData?.duration??Duration.zero,
                        onSeek: audioPlayer.seek,
                      );

                    }),
                Center(child: Control(audioPlayer: audioPlayer)),





                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 44,
                      width: 76,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: wColor.withOpacity(0.2),
                          )),
                      child: Center(
                        child: Image.asset(AppAssets.fb),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwentyFive()));
                      },
                      child: Container(
                        height: 44,
                        width: 171,
                        decoration: BoxDecoration(
                          color: btnColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Buy Now: \$0,99',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: wColor),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 76,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: wColor.withOpacity(0.2),
                          )),
                      child: Center(
                        child: Image.asset(AppAssets.twitter),
                      ),
                    ),
                  ],
                )

                // Image.asset(AppAssets.pathTwo)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
