import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:spacex_last_flight/controllers/playlist_controller.dart';
import 'package:spacex_last_flight/utils/custom_song.dart';
import 'custom_widgets/custom_bottom_navigation_bar.dart';
import 'custom_widgets/custom_icon_button.dart';
import 'custom_widgets/custom_played_song_bottom_container.dart';
import 'custom_widgets/custom_top_to_bottom_gradient_color.dart';

class SpotifyPlayList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SpotifyPlayList();
  }
}

class _SpotifyPlayList extends State {
  bool isSwitched = false;
  String? onTapSong;
  String? ontTapTitle;
  String imageTitle = 'Ders Çalışırken';
  String imageSubtitle = 'Oluşturan PLU . 10 TAKİPÇİ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: customTopToBottomBoxDecoration(
                startColor: Color(0xFFE09DF5),
                endColor: Colors.black.withOpacity(0.88),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    topInfo(),
                    subInfo(context),
                    downloadSwitch(),
                    Column(
                      children: buildSongContainerList(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomPlayedSongContainer(context),
          Divider(
            color: Colors.black,
            height: 0.1,
          ),
        ],
      ),
    );
  }

  Row topInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        playlistBackButton(),
        playlistBottomTitle(),
        playlistButtons()
      ],
    );
  }

  Widget playlistBackButton() {
    return buildIconButton(Icons.arrow_back_rounded, onPressed: () {});
  }

  Text playlistBottomTitle() {
    return Text(
      imageTitle,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Row playlistButtons() {
    return Row(
      children: [
        buildIconButton(
          Icons.person_add_alt_1_outlined,
          onPressed: () {},
        ),
        buildIconButton(
          Icons.playlist_play,
          onPressed: () {},
        ),
      ],
    );
  }

  Container subInfo(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 3 / 7,
      child: Column(
        children: [
          playlistImage(
            'https://instyle.igte.ch/Content/images/Haberler/Orjinal/sanatcilarin-sirlari-turkiyenin-en-buyuk-spotify-listesi-turkce-popta-87377-9042021113446.jpg',
            context,
          ),
          Spacer(),
          Column(
            children: [
              playlistName(),
              playlistInfo(),
            ],
          ),
          Spacer(),
          Column(
            children: [
              playMixButton(),
              addSongButton(context),
            ],
          ),
        ],
      ),
    );
  }

  Image playlistImage(String imageUrl, BuildContext context) {
    return Image.network(
      imageUrl,
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 4,
    );
  }

  Container playlistName() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(
        imageTitle,
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }

  Container playlistInfo() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Text(
        imageSubtitle,
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
    );
  }

  Container playMixButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          primary: Colors.green[700],
        ),
        child: Text(
          'Karışık Çalış',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Container addSongButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 30,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          primary: Colors.grey[900],
        ),
        child: Text(
          'Şarkı Ekle',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Align downloadSwitch() {
    return Align(
      alignment: Alignment.centerRight,
      child: Switch(
        activeColor: Colors.green,
        value: isSwitched,
        onChanged: (value) {
          setState(
            () {
              isSwitched = value;
            },
          );
        },
      ),
    );
  }
}

GestureDetector buildContainer(
    double height, String image, String listTitle, String listSubtitle) {
  var mainColor = Colors.white;
  var secondaryColor = Colors.grey;
  var playListController = Get.put(PlayListController());
  return GestureDetector(
    onTap: () {
      playListController.changeImage(image);
      playListController.changeTitle(listTitle);
      playListController.changeSubtitle(listSubtitle);
    },
    child: customSongListTile(
        image, listTitle, mainColor, listSubtitle, secondaryColor),
  );
}

ListTile customSongListTile(String image, String listTitle, Color mainColor,
    String listSubtitle, MaterialColor secondaryColor) {
  return ListTile(
    leading: Image.network(
      image,
      fit: BoxFit.scaleDown,
    ),
    title: Text(
      listTitle,
      style: TextStyle(color: mainColor),
    ),
    subtitle: Row(
      children: [
        IconButton(
            icon: Icon(
              Icons.arrow_downward,
              size: 20,
            ),
            onPressed: () {}),
        Text(
          listSubtitle,
          style: TextStyle(
            color: secondaryColor,
          ),
        ),
      ],
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.more_vert,
        color: secondaryColor,
      ),
    ),
  );
}
