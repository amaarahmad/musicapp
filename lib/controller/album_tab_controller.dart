import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:musicapp/album_screens/album_tab.dart';
import 'package:musicapp/album_screens/artist_tab.dart';
import 'package:musicapp/album_screens/tab_one.dart';
import 'package:musicapp/album_screens/track_tab.dart';

class AlbumTabController extends GetxController {

  RxInt selectedIndex=1.obs;

  List<String>labels=[
    'Tracks',
    'Albums',
    'Playlists',
    'Artist',
  ];
  List<Widget> contentScreen=[
    TrackTab(),
    AlbumTab(),
    TabOne(),
    ArtistTab()
  ];

  void onPressedIndex(int index){
    selectedIndex.value=index;
  }


}