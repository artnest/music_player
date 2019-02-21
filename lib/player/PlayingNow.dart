import 'package:flutter/material.dart';

import 'AlbumCover.dart';
import 'ControlButtons.dart';
import 'MoreButtons.dart';

class PlayingNow extends StatefulWidget {
  final String song;
  final String artist;

  PlayingNow({this.song, this.artist});

  @override
  _PlayingNowState createState() => _PlayingNowState();
}

class _PlayingNowState extends State<PlayingNow> {
  var _progress = 0.0;
  var _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const AlbumCover('images/madeline_juno_saturation.jpg'),
          _renderSongName(widget.song),
          _renderArtistName(widget.artist),
          _renderSongProgress(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ControlButtons(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: _renderVolumeBar(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MoreButtons(),
          ),
        ],
      ),
    );
  }

  Text _renderSongName(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Text _renderArtistName(String name) {
    return Text(
      name,
      style: TextStyle(color: Colors.black38),
    );
  }

  Slider _renderSongProgress() {
    return Slider(
      value: _progress,
      inactiveColor: Colors.black12,
      onChanged: (double value) {
        setState(() {
          _progress = value;
        });
      },
    );
  }

  Slider _renderVolumeBar() {
    return Slider(
      value: _volume,
      inactiveColor: Colors.black12,
      onChanged: (double value) {
        setState(() {
          _volume = value;
        });
      },
    );
  }
}
