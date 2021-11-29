// MUHD EIMAN HAKIMY BIN SHAHRUM B20EC0032
// NURIN NADHIRAH NASRIN BT KAMRISHAM B20EC0042

import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAP Exercise 2',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MainScreen(),
    );
  }
}
