import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      fontSize: 34,
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w100
    );

    final String _title = "出师表";
    final String _author = "--诸葛亮";

    final TextStyle _childText = TextStyle(
      fontSize: 17,
      color: Colors.black87,
    );
    final String _context = '''
      先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。

      宫中府中，俱为一体，陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。

      侍中、侍郎郭攸之、费祎、董允等，此皆良实，志虑忠纯，是以先帝简拔以遗陛下。愚以为宫中之事，事无大小，悉以咨之，然后施行，必能裨补阙漏，有所广益。

      将军向宠，性行淑均，晓畅军事，试用于昔日，先帝称之曰能，是以众议举宠为督。愚以为营中之事，悉以咨之，必能使行阵和睦，优劣得所。

      亲贤臣，远小人，此先汉所以兴隆也；亲小人，远贤臣，此后汉所以倾颓也。先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也。侍中、尚书、长史、参军，此悉贞良死节之臣，愿陛下亲之信之，则汉室之隆，可计日而待也。

      臣本布衣，躬耕于南阳，苟全性命于乱世，不求闻达于诸侯。先帝不以臣卑鄙，猥自枉屈，三顾臣于草庐之中，咨臣以当世之事，由是感激，遂许先帝以驱驰。后值倾覆，受任于败军之际，奉命于危难之间，尔来二十有一年矣。

      先帝知臣谨慎，故临崩寄臣以大事也。受命以来，夙夜忧叹，恐托付不效，以伤先帝之明，故五月渡泸，深入不毛。今南方已定，兵甲已足，当奖率三军，北定中原，庶竭驽钝，攘除奸凶，兴复汉室，还于旧都。此臣所以报先帝而忠陛下之职分也。至于斟酌损益，进尽忠言，则攸之、祎、允之任也。

      愿陛下托臣以讨贼兴复之效，不效，则治臣之罪，以告先帝之灵。若无兴德之言，则责攸之、祎、允等之慢，以彰其咎；陛下亦宜自谋，以咨诹善道，察纳雅言，深追先帝遗诏，臣不胜受恩感激。

      今当远离，临表涕零，不知所言
      ''';

    Widget _listItemBuilder(BuildContext context, int index) {
      
      return Container(
        color: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: '《$_title》',
                // textAlign: TextAlign.left,
                style: _textStyle,
                // maxLines: 12,
                // overflow: TextOverflow.ellipsis,
                children: [
                  TextSpan(
                    text: "$_author",
                    style: _childText,
                  )
                ]
              ),
              textAlign: TextAlign.center,
            ),
            Text(_context),
            SizedBox(
              height: 10,
            ),
            // Cain 容器
            Container(
              child: Icon(Icons.navigate_next, size: 32, color: Colors.black87),
              padding: EdgeInsets.only(bottom: 4.0),
              margin: EdgeInsets.all(4.0),
              width: 400,
              // Cain 装饰盒子
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                border: Border.all(
                  color: Colors.blue[100],
                  width: 2
                ),
                // Cain box圆角，当shape为circle时不可用
                borderRadius: BorderRadius.circular(16),
                // Cain box阴影效果，可设置多个
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-10.0, -5.0),
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: -5
                  )
                ],
                // Cain box形状
                shape: BoxShape.rectangle,
                // Cain 镜像渐变
                // gradient: RadialGradient(
                //   colors: [
                //     Color.fromARGB(225, 250, 130, 180),
                //     Color.fromARGB(200, 200, 130, 150),
                //   ]
                // )
                // Cain 线性渐变
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(225, 250, 130, 180),
                    Color.fromARGB(200, 250, 120, 160),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                image: DecorationImage(
                  image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558972056621&di=4fab3cbc9a0a487766f2804ab72433a1&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F038afb956a327e16ac7256cb0a4ce4f.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight
                  ),
                )
              ),
            )
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: 1,
      itemBuilder: _listItemBuilder,
    );
  }
}