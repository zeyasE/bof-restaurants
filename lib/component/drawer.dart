import 'package:bof_restaurants/screen/export_page.dart';
import 'package:bof_restaurants/screen/home_page.dart';
import 'package:bof_restaurants/screen/menu_page.dart';
import 'package:bof_restaurants/screen/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  void _navigateToNewPage(BuildContext context, Type pageType) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _buildPage(context, pageType)),
    );
  }

  Widget _buildPage(BuildContext context, Type pageType) {
    switch (pageType) {
      case const (MenuPage):
        return const MenuPage();
      case const (SettingPage):
        return const SettingPage();
      case const (ExportPage):
        return const ExportPage();
      case const (HomePage):
        return const HomePage(title: '',); // Navigate to OtherPage (example)
      // Add more cases for other page types as needed
      default:
        throw ArgumentError('Invalid page type: $pageType');
    }
  }

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
              _navigateToNewPage(context, HomePage);
              // Handle tap for Item 1
            },
          ),
          ListTile(
            title: const Text('Menu'),
            onTap: () {
              _navigateToNewPage(context, MenuPage);
              // Handle tap for Item 1
            },
          ),
          ListTile(
            title: const Text('Export'),
            onTap: () {
              _navigateToNewPage(context, ExportPage);
              // Handle tap for Item 2
            },
          ),
          ListTile(
            title: const Text('Setting'),
            onTap: () {
              _navigateToNewPage(context, SettingPage);
              // Handle tap for Item 2
            },
          ),
        ],
      ),
    );
  }
}
