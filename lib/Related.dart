


import 'package:flutter/material.dart';

class related extends StatefulWidget {
  const related({Key? key}) : super(key: key);

  @override
  State<related> createState() => _relatedState();
}

class _relatedState extends State<related> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Group759.png'),
            fit: BoxFit.fill,
          )
      ),
    );
  }
}
