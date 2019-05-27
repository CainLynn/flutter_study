import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Cain", style: TextStyle(color: Colors.white)),
                accountEmail: Text("729048330@qq.com", style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://coding-net-production-static-ci.codehub.cn/WM-TEXT-AVATAR-xVfTgqDXhYvBIgNyVrKh.jpg"),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558972056621&di=4fab3cbc9a0a487766f2804ab72433a1&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F038afb956a327e16ac7256cb0a4ce4f.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight
                    ),

                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.message, color: Colors.black12, size: 22),
                title: Text("Messages", textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.black12, size: 22),
                title: Text("Favorite", textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.black12, size: 22),
                title: Text("Settings", textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}