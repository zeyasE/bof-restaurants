import 'package:flutter/material.dart';

class MenuSettingPage extends StatelessWidget {
  const MenuSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Setting'),
      ),
      body: const Center(
        child: Text('This is the new page!'),
      ),
    );
  }
}