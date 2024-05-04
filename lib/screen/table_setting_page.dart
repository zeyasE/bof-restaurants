import 'package:flutter/material.dart';

class TableSettingPage extends StatelessWidget {
  const TableSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Setting'),
      ),
      body: const Center(
        child: Text('This is the new page!'),
      ),
    );
  }
}