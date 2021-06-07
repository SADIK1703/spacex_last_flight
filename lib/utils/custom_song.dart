import 'package:flutter/cupertino.dart';
import 'package:spacex_last_flight/views/spotify_ana_sayfa.dart';

var imageList = <String>[
  'https://images.genius.com/1eb5872268fac2cd1458025cf223b0b0.939x939x1.jpg',
  'https://upload.wikimedia.org/wikipedia/tr/thumb/6/69/Vemfo.jpg/375px-Vemfo.jpg',
  'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324',
  'https://images.genius.com/9ea9f98878e73de89768e66ca2acea5f.500x500x1.jpg',
  'https://upload.wikimedia.org/wikipedia/tr/7/77/Levent_Y%C3%BCksel_-_Med_Cezir.png',
  'https://upload.wikimedia.org/wikipedia/tr/thumb/d/d4/Duman1.jpg/375px-Duman1.jpg',
  'https://www.birbabaindie.com/wp-content/uploads/2015/11/nilipek.jpg',
  'https://cdnguncelmp3indir.com/fotograflar/albumler/2018/11/emir-can-igrek_agir-roman.jpg',
];

var singerList = <String>[
  'Kalben',
  'Mfö',
  'Yalın',
  'Can Ozan',
  'Levent Yüksel',
  'Duman',
  'Nil İpek',
  'Emir Can İğrek',
];

var songNameList = <String>[
  'Sadece',
  'Sarı Laleler',
  'Küçücüğüm',
  'Seni Gördüm Rüyamda',
  'Medcezir',
  'Senden Daha Güzel',
  'Gömülür',
  'Kaptan',
];

List<Widget> buildSongContainerList(BuildContext context) {
  var widgetList = <Widget>[];

  for (var i = 0; i < imageList.length - 1; i++) {
    widgetList.add(buildContainer(MediaQuery.of(context).size.height / 14,
        imageList[i], singerList[i], songNameList[i]));
  }

  return widgetList;
}
