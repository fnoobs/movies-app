import 'package:flutter/material.dart';
import 'package:movies_app/screens/home/home.screen.dart';

import './theme/light/index.dart';
import './screens/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      home: HomeScreen(),
    );
  }
}
