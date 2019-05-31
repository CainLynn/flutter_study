import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text("Cain"),
            // Cain 固定在页面
            // pinned: true,
            // Cain 下拉立刻出现
            floating: true,
            elevation: 0,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Cain Flutter".toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3.0),
              ),
              background: Image.network(
                "https://s2.ax1x.com/2019/03/31/Aripp6.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Cain 防止异形屏遮挡
          SliverSafeArea(
            sliver: SliverPadding(
                padding: EdgeInsets.all(0.0), sliver: SliverListDemo()),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: Material(
            borderRadius: BorderRadius.circular(12.0),
            // Cain 阴影
            elevation: 14,
            // Cain 阴影颜色,不透明度
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(posts[index].title,
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text(posts[index].author,
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      // Cain SliverGrid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          // Cain 网格视图项目比例
          childAspectRatio: 1),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
