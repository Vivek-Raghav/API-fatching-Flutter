import 'package:apifatch/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:http/http.dart';

import 'screens/homepage.dart';

void main() {
  runApp(APifatch());
  var data;
}

class APifatch extends StatefulWidget {
  const APifatch({Key? key}) : super(key: key);

  @override
  State<APifatch> createState() => _APifatchState();
}

class _APifatchState extends State<APifatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}
