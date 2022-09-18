import 'package:flutter/material.dart';

import 'Home_page.dart';

void main() {
  runApp( MaterialApp(
    home: HomePage(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: HomePage(),

    );
  }
}
