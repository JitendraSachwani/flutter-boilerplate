import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/screens/screens.dart';

const String appTitle = "Flutter Boilerplate by Jitu";

void main() {
  runApp(MaterialApp(
    title: appTitle,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    // TODO: Add boilerplate widgets for screen navigation like bottom navbar/tab-bar,etc
    // TODO: Add usage for Service1
    home: const HomeScreen(title: appTitle),
  ));
}
