import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.skip_previous),
          color: Colors.pink,
          onPressed: () {},
        ),
        FloatingActionButton(
          elevation: 16,
          child: Icon(Icons.play_arrow),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.skip_next),
          color: Colors.pink,
          onPressed: () {},
        ),
      ],
    );
  }
}
