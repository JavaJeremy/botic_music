import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';

class AlbumArtContainer extends StatelessWidget {
  const AlbumArtContainer({
    Key key,
    @required double radius,
    @required double albumArtSize,
    @required Song currentSong,
  })  : _radius = radius,
        _albumArtSize = albumArtSize,
        _currentSong = currentSong,
        super(key: key);

  final double _radius;
  final double _albumArtSize;
  final Song _currentSong;

  @override
  Widget build(BuildContext context) {
    var songImage = AssetImage(_currentSong.albumArt);
    return ClipRRect(
//      borderRadius: BorderRadius.circular(_radius),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: _albumArtSize,
            child: FadeInImage(
              placeholder: songImage,
              image: songImage,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
