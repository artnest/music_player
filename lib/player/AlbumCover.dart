import 'package:flutter/material.dart';

class AlbumCover extends StatelessWidget {
  final String coverPath;

  const AlbumCover(this.coverPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(height: 320),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.pink,
            blurRadius: 100,
            spreadRadius: -20,
            offset: Offset(0, 20),
          ),
        ],
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 24),
      child: ClipOval(
        child: Image(
          image: AssetImage(coverPath),
        ),
      ),
    );
  }
}
