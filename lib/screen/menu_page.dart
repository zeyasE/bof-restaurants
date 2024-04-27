import 'package:bof_restaurants/component/drawer.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Menu"),
      ),
      drawer: const DrawerMenu(),
      body: const Center(
        child: Text('This is the new page!'),
      ),
    );
  }
}