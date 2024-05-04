import 'package:bof_restaurants/component/drawer.dart';
import 'package:bof_restaurants/screen/account_setting_page.dart';
import 'package:bof_restaurants/screen/menu_setting_page.dart';
import 'package:bof_restaurants/screen/table_setting_page.dart';
import 'package:bof_restaurants/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _tableCounter = 0;

  void _setTableCounter(String type) {
    setState(() {
      // if (type == "+") {
      //   _tableCounter++;
      // } else if (_tableCounter > 0) {
      //   _tableCounter--;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Setting'),
      ),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Number of tables',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        '$_tableCounter',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      GFButton(
                        onPressed: () {navigateToNewPage(context, TableSettingPage);},
                        text: "edit",
                        shape: GFButtonShape.square,
                      ),
                    ],
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Menu',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                     GFButton(
                        onPressed: () {navigateToNewPage(context, MenuSettingPage);},
                        text: "edit",
                        shape: GFButtonShape.square,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Account',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                     GFButton(
                        onPressed: () {navigateToNewPage(context, AccountSettingPage);},
                        text: "edit",
                        shape: GFButtonShape.square,
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(child: Container()), // Fill the remaining space
            ],
          ),
        ),
      ),
    );
  }
}
