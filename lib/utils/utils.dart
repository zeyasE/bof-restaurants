import 'package:bof_restaurants/screen/account_setting_page.dart';
import 'package:bof_restaurants/screen/menu_setting_page.dart';
import 'package:bof_restaurants/screen/table_setting_page.dart';
import 'package:flutter/material.dart';
import 'package:bof_restaurants/screen/export_page.dart';
import 'package:bof_restaurants/screen/home_page.dart';
import 'package:bof_restaurants/screen/menu_page.dart';
import 'package:bof_restaurants/screen/setting_page.dart';

void navigateToNewPage(BuildContext context, Type pageType) {
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
      case const (TableSettingPage):
        return const TableSettingPage();
      case const (AccountSettingPage):
        return const AccountSettingPage();
      case const (MenuSettingPage):
        return const MenuSettingPage();
      case const (HomePage):
        return const HomePage(title: '',); // Navigate to OtherPage (example)
      // Add more cases for other page types as needed
      default:
        throw ArgumentError('Invalid page type: $pageType');
    }
  }
