import 'package:car_rental/tabbarPage/localtwo.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/tabbarPage/local.dart';

class Journey extends StatefulWidget {
  const Journey({Key? key}) : super(key: key);

  @override
  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> 
with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 6),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              //padding: EdgeInsets.only(top: 4),
              //height: 42.0,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 58, 58),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TabBar(
                      labelColor: Colors.white,
                      indicatorColor: Color.fromARGB(255, 247, 184, 38),
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                        color: Color.fromARGB(255, 247, 184, 38),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: 'One Way',
                        ),
                        Tab(
                          text: 'Two Way',
                        )
                    ]),)
                ],
              ),
            ),
            Expanded(child: TabBarView(
              controller: tabController,
              children: [
              Local(),
              Localtwo(),
            ],),),
        ],
      ),
          ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}