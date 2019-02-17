import 'package:flutter/material.dart';

class MoreButtons extends StatefulWidget {
  const MoreButtons({Key key}) : super(key: key);

  @override
  MoreButtonsState createState() => MoreButtonsState();
}

class MoreButtonsState extends State<MoreButtons> {
  var _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite),
          color: _isFavorite ? Colors.pink : Colors.grey,
          onPressed: () {
            setState(() {
              _isFavorite = !_isFavorite;
            });
          },
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          color: Colors.grey,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.chat_bubble),
          color: Colors.grey,
          onPressed: () {},
        ),
      ],
    );
  }
}
