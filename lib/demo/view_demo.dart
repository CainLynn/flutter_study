import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {

  Widget _pageItemBuilder(BuildContext context, int index) {

    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.fill
          ),
        ),
        Positioned(
          bottom: 2.0,
          right: 2.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(posts[index].title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow[100])),
              Text(posts[index].author, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: PageView(
        // Cain true为自动翻滚
        pageSnapping: false,
        // Cain true为翻转顺序
        reverse: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (currentPage) => debugPrint("$currentPage"),
        controller: PageController(
          // Cain 初始页数
          initialPage: 1,
          keepPage: true,
          viewportFraction: 0.85
        ),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.brown[900],
            child: Text("Hello, Cain", style: TextStyle(color: Colors.white, fontSize: 32),),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.grey[900],
            child: Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 32),),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blueGrey[900],
            child: Text("Thanks", style: TextStyle(color: Colors.white, fontSize: 32),),
          ),
        ],
      ),
    );
  }
}