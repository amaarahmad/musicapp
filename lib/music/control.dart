import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicapp/style/colors.dart';

class Control extends StatelessWidget {
  final AudioPlayer audioPlayer;
  const Control({super.key, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: wColor,
              borderRadius: BorderRadius.circular(50)
          ),
          child: Center(
            child: IconButton(onPressed: (){
              audioPlayer.seekToPrevious();
            },
                iconSize: 30,
                color: btnColor,
                icon: Icon(Icons.skip_previous_rounded)),
          ),
        ),

        StreamBuilder<PlayerState>(
            stream: audioPlayer.playerStateStream,
            builder: (context, snapshot) {
              final playerState = snapshot.data;
              final processingState = playerState?.processingState;
              final playing = playerState?.playing;
              if (!(playing ?? false)) {
                return IconButton(
                    onPressed: audioPlayer.play,
                    color: wColor,
                    iconSize: 80,
                    icon: Icon(Icons.play_arrow_rounded));
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                    onPressed: audioPlayer.pause,
                    color: wColor,
                    iconSize: 80,
                    icon: Icon(Icons.pause_rounded));
              }
              return Icon(
                Icons.play_arrow_rounded,
                size: 80,
                color: wColor,
              );
            }),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: wColor,
              borderRadius: BorderRadius.circular(50)
          ),
          child: Center(
            child: IconButton(onPressed: (){
              audioPlayer.seekToNext();
            },
                iconSize: 30,
                color: btnColor,
                icon: Icon(Icons.skip_next_rounded)),
          ),
        ),

      ],
    );
  }
}