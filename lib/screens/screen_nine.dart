import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/album_component.dart';
import 'package:musicapp/component/card_component.dart';
import 'package:musicapp/component/popular_component.dart';
import 'package:musicapp/component/row_compent.dart';
import 'package:musicapp/component/track_component.dart';
import 'package:musicapp/screens/screen_eleven.dart';
import 'package:musicapp/screens/screen_fifteen.dart';
import 'package:musicapp/screens/screen_ten.dart';
import 'package:musicapp/screens/screen_thirty.dart';
import 'package:musicapp/screens/screen_twenty_five.dart';
import 'package:musicapp/style/colors.dart';

class ScreenNine extends StatelessWidget {
  const ScreenNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: Drawer(
        backgroundColor: bgColor.withOpacity(0.8),
        width: 250,
        child: Column(
          children: [
            DrawerHeader(
                child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(AppAssets.artistThree),
                ),
                title: const Text(
                  'John',
                  style: TextStyle(fontSize: 14, color: wColor),
                ),
                subtitle: const Text(
                  'John@gmail.com',
                  style: TextStyle(fontSize: 12, color: wColor),
                ),
              ),
            )),
            const SizedBox(
              height: 40,
            ),
            const ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: wColor,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: wColor),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.favorite_border,
                color: wColor,
              ),
              title: Text(
                "Favourite",
                style: TextStyle(color: wColor),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.album_outlined,
                color: wColor,
              ),
              title: Text(
                "My Albums",
                style: TextStyle(color: wColor),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                color: wColor,
              ),
              title: Text(
                "Setting",
                style: TextStyle(color: wColor),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Musical',
          style: TextStyle(
              color: wColor, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: wColor),
        centerTitle: true,
        actions:  [
          IconButton(
            onPressed: (){
              Get.to(ScreenThirty());
            },
            color: wColor, icon: Icon(Icons.search,size: 30,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.musicBack),
                      fit: BoxFit.cover,
                      opacity: 0.5)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Free Music\nApplication',
                    style: TextStyle(color: wColor, fontSize: 38),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const CircleAvatar(
                  //       radius: 4,
                  //       backgroundColor: wColor,
                  //     ),
                  //     const SizedBox(
                  //       width: 10,
                  //     ),
                  //     CircleAvatar(
                  //       radius: 4,
                  //       backgroundColor: wColor.withOpacity(0.2),
                  //     ),
                  //     const SizedBox(
                  //       width: 10,
                  //     ),
                  //     CircleAvatar(
                  //       radius: 4,
                  //       backgroundColor: wColor.withOpacity(0.2),
                  //     ),
                  //     const SizedBox(
                  //       width: 10,
                  //     ),
                  //     CircleAvatar(
                  //       radius: 4,
                  //       backgroundColor: wColor.withOpacity(0.2),
                  //     ),
                  //     const SizedBox(
                  //       width: 10,
                  //     ),
                  //     CircleAvatar(
                  //       radius: 4,
                  //       backgroundColor: wColor.withOpacity(0.2),
                  //     ),
                  //
                  //
                  //
                  //   ],
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RowComponent(
                titleOne: 'Browse by Genre',
                onPressed: () {
                  Get.to(ScreenTen());
                },
                titleTwo: 'See All'),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardComponent(
                    imageUrl: AppAssets.girl,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CardComponent(
                    imageUrl: AppAssets.boy,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CardComponent(
                    imageUrl: AppAssets.boy,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RowComponent(
                titleOne: 'New Album',
                onPressed: () {
                  Get.to(ScreenEleven());
                },
                titleTwo: 'See All'),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AlbumComponent(
                    imgUrl: AppAssets.love,
                    title: 'Loov',
                    subTitle: 'Mas Bastar',
                  ),
                  AlbumComponent(
                    imgUrl: AppAssets.other,
                    title: 'The other Side...',
                    subTitle: 'Jazz 2 More',
                  ),
                  AlbumComponent(
                    imgUrl: AppAssets.band,
                    title: 'Sure thing',
                    subTitle: 'Big State',
                  ),
                  AlbumComponent(
                    imgUrl: AppAssets.band,
                    title: 'Sure thing',
                    subTitle: 'Big State',
                  ),
                ],
              ),
            ),
            Divider(color: wColor.withOpacity(0.5), thickness: 0.5),
            const SizedBox(
              height: 10,
            ),
            RowComponent(
              titleOne: 'Most Played Tracks',
              onPressed: () {
                Get.to(ScreenFifteen());
              },
              titleTwo: 'See All',
              color: btnColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(color: wColor.withOpacity(0.5), thickness: 0.5),
            TrackComponent(
                title: 'Long Time',
                subTitle: 'Blondie',
                imgUrl: AppAssets.longTime,
                price: '\$0,99'),
            TrackComponent(
                title: 'The Ghost Tower',
                subTitle: 'Fabrizio',
                imgUrl: AppAssets.ghost,
                price: '\$2,99'),
            TrackComponent(
                title: 'Naked Poetry',
                subTitle: 'Flower blase',
                imgUrl: AppAssets.naked,
                price: '\$1,25'),
            TrackComponent(
                title: 'Twilight',
                subTitle: 'Blondie',
                imgUrl: AppAssets.twilight,
               price: '\$5,00'),
            RowComponent(titleOne: 'Popular Artists', titleTwo: 'See All'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularComponent(
                      title: 'Eric Saade',
                      subTitle: 'Dance,rock',
                      imgUrl: AppAssets.eric),
                  const SizedBox(
                    width: 15,
                  ),
                  PopularComponent(
                      title: 'Moonbeam',
                      subTitle: 'Electronic',
                      imgUrl: AppAssets.moon),
                  const SizedBox(
                    width: 15,
                  ),
                  PopularComponent(
                      title: 'Nicki Minaj',
                      subTitle: 'Rap, hip-hop',
                      imgUrl: AppAssets.nicki),
                  const SizedBox(
                    width: 15,
                  ),
                  PopularComponent(
                      title: 'Eric Saade',
                      subTitle: 'Dance,rock',
                      imgUrl: AppAssets.eric),
                ],
              ),
            ),
            Divider(color: wColor.withOpacity(0.5), thickness: 0.5),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 167,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: wColor.withOpacity(0.5))),
                  child: Center(
                    child: Image.asset(AppAssets.fb),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 44,
                  width: 167,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: wColor.withOpacity(0.5))),
                  child: Center(
                    child: Image.asset(AppAssets.twitter),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
