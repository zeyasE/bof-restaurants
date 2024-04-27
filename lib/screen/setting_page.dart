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
      if (type == "+") {
        _tableCounter++;
      } else if (_tableCounter > 0) {
        _tableCounter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Number of tables',
            //   style: TextStyle(fontSize: 20),
            // ),
            // SizedBox(height: 20),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Number of tables',
                  style: TextStyle(fontSize: 20),
                ),
                GFIconButton(
                  onPressed: () => _setTableCounter('-'),
                  icon: const Icon(Icons.remove),
                  // type: GFButtonType.outline,
                  // shape: GFIconButtonShape.circle,
                ),
                const SizedBox(width: 30),
                SizedBox(
                    width: 40,
                    child: Text(
                      '$_tableCounter',
                      style: const TextStyle(fontSize: 20),
                    )),
                const SizedBox(width: 18),
                GFIconButton(
                  onPressed: () => _setTableCounter('+'),
                  icon: const Icon(Icons.add),
                  // type: GFButtonType.outline,
                  // shape: GFIconButtonShape.circle,
                ),
              ],
            ),
            Expanded(child: Container()), // Fill the remaining space
          ],
        ),
      ),
    );
  }
}
