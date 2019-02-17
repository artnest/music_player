import 'package:flutter/material.dart';

import 'player/PlayingNow.dart';

void main() => runApp(Player());

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxury Player',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0),
          elevation: 0,
        ),*/
        body: PlayingNow(
          song: 'Let Me Live My Life',
          artist: 'Madeline Juno',
        ),
      ),
    );
  }
}
