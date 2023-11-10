import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:musicapp/music/control.dart';
import 'package:musicapp/music/media_meta_data.dart';
import 'package:musicapp/style/colors.dart';
import 'package:rxdart/rxdart.dart';

class PositionData {
  final Duration position;
  final Duration bufferedPosition;

  PositionData(this.position, this.bufferedPosition, this.duration);

  final Duration duration;
}

class DummyMusic extends StatefulWidget {
  const DummyMusic({super.key});

  @override
  State<DummyMusic> createState() => _DummyMusicState();
}

class _DummyMusicState extends State<DummyMusic> {
  late AudioPlayer audioPlayer;
  final _playlist=ConcatenatingAudioSource(children: [
    AudioSource.asset('assets/audio.mp3',
      tag: MediaItem(id: '0',
          title: 'Nature sounds',
          artist: 'Public',
         // artUri: Uri.parse("https://unsplash.com/photos/a-woman-with-green-hair-sitting-at-a-table-BS6hKOx02ig")
      )
    ),
    AudioSource.asset('assets/audio.mp3',
      tag: MediaItem(id: '1',
          title: 'Nature sounds two',
          artist: 'Private',
         // artUri:Uri.file('assets/band.png')
      )
    ),
  ]);

  Stream<PositionData> get _positionDataStream => Rx.combineLatest3<Duration,Duration,Duration?,PositionData>(
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
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          'Dummy Music',
          style: TextStyle(color: wColor),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                barHeight: 8,
                  baseBarColor: wColor,
                  bufferedBarColor: btnColor.withOpacity(0.5),
                  progressBarColor: btnColor,
                  timeLabelTextStyle: TextStyle(
                    color: wColor
                  ),
                  progress: positionData?.position??Duration.zero,
                  buffered:positionData?.bufferedPosition??Duration.zero ,
                  total: positionData?.duration??Duration.zero,
              onSeek: audioPlayer.seek,
              );

          }),
          Center(child: Control(audioPlayer: audioPlayer))
        ],
      ),
    );
  }
}

