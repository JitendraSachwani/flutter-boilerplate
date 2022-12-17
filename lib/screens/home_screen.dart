import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/widgets/widgets.dart';
import 'package:flutter_boilerplate/domain/services/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text(
            'You have pushed the button this many times:',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
