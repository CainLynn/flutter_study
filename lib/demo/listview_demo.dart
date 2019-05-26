import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget _listItemBuilder(BuildContext context, int index) {
      Post post = posts[index];
      TextTheme textTheme = Theme.of(context).textTheme;
      return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.network(post.imageUrl),
            SizedBox(
              height: 16.0
            ),
            Text(
              post.title,
              style: textTheme.title,
            ),
            Text(
              post.author,
              style: textTheme.subhead,
            ),
            SizedBox(
              height: 16.0
            ),
          ],
        ),

      );
    }
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}