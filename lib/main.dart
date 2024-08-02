import 'dart:io';

import 'package:Quiz_app/quiz_App/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aplication());
}

class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
