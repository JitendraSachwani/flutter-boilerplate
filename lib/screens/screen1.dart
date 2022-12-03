import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/widgets/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text('Welcome to Screen1'),
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
