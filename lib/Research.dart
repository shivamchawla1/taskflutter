import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class research extends StatefulWidget {
  const research({Key? key}) : super(key: key);

  @override
  State<research> createState() => _researchState();
}

class _researchState extends State<research> {




  @override
  Widget build(BuildContext context) {
    return Column(


        children: [
          Expanded(

           child: Container(
             height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Statistics.png'),
                fit: BoxFit.fill,
              )
           ),
          ),
          ),
          Expanded(
          child:ListView(
            padding: EdgeInsets.all(20.0),
            scrollDirection: Axis.horizontal,
            children: [

              SizedBox(
                width: 250,

                child: Text("Last week, the dire warnings that appeared in the Wall Street Journal, The Economist and Foreign Affairs about Chinas imminent war with or...",
                  ),
              ),
              SizedBox(
                width: 250,
                child: Text('Most people the BBC spoke to do not believe China is about to attack Taiwan. Theyre a bunch of gangsters, said one man fishing on the...'),
              ),
              SizedBox(
                width: 250,

                child: Text('Most people the BBC spoke to do not believe China is about to attack Taiwan. Theyre a bunch of gangsters, said one man fishing on the...'),
              ),
            ],

          ),
          ),






        ],


    );
  }
}
