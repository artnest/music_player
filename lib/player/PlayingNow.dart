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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          const AlbumCover('images/madeline_juno_saturation.jpg'),
          songName(widget.song),
          const SizedBox(height: 8),
          artistName(widget.artist),
          const SizedBox(height: 48),
          songProgress(),
          const SizedBox(height: 56),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ControlButtons(),
          ),
          const SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: volumeBar(),
            // 2464 - 2542
          ),
          const SizedBox(height: 36),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MoreButtons(),
          ),
        ],
      ),
    );
  }

  Text songName(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Text artistName(String name) {
    return Text(
      name,
      style: TextStyle(color: Colors.black38),
    );
  }

  Slider songProgress() {
    return Slider(
      value: 0.5,
      inactiveColor: Colors.black12,
      onChanged: (double value) {},
    );
    /*return LinearProgressIndicator(
      value: 0.5,
      backgroundColor: Colors.black12,
    );*/
  }

  Slider volumeBar() {
    return Slider(
      value: 0.2,
      inactiveColor: Colors.black12,
      onChanged: (double value) {},
    );
    /*return LinearProgressIndicator(
      value: 0.2,
      backgroundColor: Colors.black12,
    );*/
  }
}
