import 'package:flutter/cupertino.dart';

class reaction extends StatefulWidget {
  const reaction({Key? key}) : super(key: key);

  @override
  State<reaction> createState() => _reactionState();
}

class _reactionState extends State<reaction> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Comments.png'),
            fit: BoxFit.fill,
          )
      ),
    );
  }
}
