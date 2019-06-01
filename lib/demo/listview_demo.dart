import 'package:flutter/material.dart';
import 'package:flutter_study/demo/post_show.dart';
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
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 3/4,
                  child: Image.network(post.imageUrl, fit: BoxFit.cover),
                ),
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
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  // Cain 溅墨颜色
                  splashColor: Colors.white.withOpacity(0.3),
                  // Cain 高亮颜色
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PostShow(post: posts[index])
                  )),
                  onLongPress: () => debugPrint("longPress"),
                  onDoubleTap: () => debugPrint("doubleTap"),
                  
                ),
              ),
            )
          ],
        )
      );
    }
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}