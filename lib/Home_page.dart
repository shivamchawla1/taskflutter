import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Reaction.dart';
import 'Related.dart';
import 'Research.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
ScrollController? customScrollcontroller;
TabController? tabbarController;

  @override
  void initState(){
    customScrollcontroller = ScrollController();
    tabbarController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: customScrollcontroller,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 303,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Vector.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 303,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Will China invade Tiwan                before end september?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ) ,
            ),
            SliverToBoxAdapter(
              child : Container(
                child: Image.asset('assets/portfolio.png',),
              ),
            ),
            SliverToBoxAdapter(
              child : TabBar(
                indicatorColor:Colors.pink,
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.grey,
                controller: tabbarController!,
                tabs: [
                  Tab(text:"Research & News"),
                  Tab(text:"Reactions"),
                  Tab(text:"Related"),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: tabbarController!,
            children: [
           research(),
          reaction(),
          related(),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: '',

          ),


        ],
      ),
    );
  }
}
