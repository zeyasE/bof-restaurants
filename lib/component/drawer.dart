import 'package:bof_restaurants/screen/export_page.dart';
import 'package:bof_restaurants/screen/home_page.dart';
import 'package:bof_restaurants/screen/menu_page.dart';
import 'package:bof_restaurants/screen/setting_page.dart';
import 'package:bof_restaurants/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const GFDrawerHeader(
            currentAccountPicture: GFAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
              ),
            ),
            otherAccountsPictures: <Widget>[
              Image(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
                ),
                fit: BoxFit.cover,
              ),
              GFAvatar(
                child: Text("ab"),
              )
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('user name'),
                Text('user@userid.com'),
              ],
            ),
          ),
          ListTile(
            title: const Text('Table'),
            onTap: () {
              navigateToNewPage(context, HomePage);
              // Handle tap for Item 1
            },
          ),
          ListTile(
            title: const Text('Menu'),
            onTap: () {
              navigateToNewPage(context, MenuPage);
              // Handle tap for Item 1
            },
          ),
          ListTile(
            title: const Text('Export'),
            onTap: () {
              navigateToNewPage(context, ExportPage);
              // Handle tap for Item 2
            },
          ),
          ListTile(
            title: const Text('Setting'),
            onTap: () {
              navigateToNewPage(context, SettingPage);
              // Handle tap for Item 2
            },
          ),
        ],
      ),
    );
  }
}
