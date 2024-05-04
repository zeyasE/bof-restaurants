import 'package:flutter/material.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Setting'),
      ),
      body: const Center(
        child: Text('This is the new page!'),
      ),
    );
  }
}