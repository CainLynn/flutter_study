import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconBadge(
          Icons.pool,
          size: 60,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconBadge(Icons.poll),
            IconBadge(Icons.polymer),
            IconBadge(Icons.date_range)
          ],
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  IconData icon;
  double size;
  IconBadge(this.icon, {this.size = 32});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size),
      width: size + 60,
      height: size + 60,
      color: Colors.deepOrange,
    );
  }
}
