
import 'package:car_rental/main.dart';
import 'package:car_rental/nav_bar/aboutus.dart';
import 'package:car_rental/nav_bar/contact.dart';
import 'package:car_rental/nav_bar/faq.dart';
import 'package:car_rental/tabbarPage/hourly.dart';
import 'package:car_rental/tabbarPage/journey.dart';
import 'package:car_rental/tabbarPage/local.dart';
import 'package:flutter/material.dart';

class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  State<Trip> createState() => _TripState();
}

class _TripState extends State<Trip> 
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
      appBar: AppBar(
        leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.menu, color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background.png'),
            fit: BoxFit.none),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
      ),
      drawer: const NavigationDrawer(),
      body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child:Text('Book Now',
                style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Fasthand',
            ),),
            ),
            Container(
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
                          text: 'Local/Outstation',
                        ),
                        Tab(
                          text: 'Hourly Rental',
                        )
                    ]),)
                ],
              ),
            ),
            Expanded(child: TabBarView(
              controller: tabController,
              children: [
              Journey(),
              Hourly(),
            ],),),
        ],
      ),
          ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.orange,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
    child: Container(
      padding: EdgeInsets.all(20),
        child: Image.asset('assets/logo.png'),
        ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined, color: Colors.black,),
          title: const Text('Home', 
          style:TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 0, 0, 0),
            ),),
          onTap: (() {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const home()),);
          }),),
          ListTile(
          leading: const Icon(Icons.car_rental, color: Colors.black,),
          title: const Text('Book Now', 
          style:TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 0, 0, 0),
            ),),
          onTap: (() {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Trip()),);
          }),),
          const Divider(color: Color.fromARGB(255, 0, 0, 0),),
        ListTile(
          leading: const Icon(Icons.phone, color: Colors.black,),
          title: const Text('Contact Us', 
          style:TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 0, 0, 0),
            ),),
          onTap: (() {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Contact()),);
          }),),
          ListTile(
          leading: const Icon(Icons.people_alt_outlined, color: Colors.black,),
          title: const Text('About Us', 
          style:TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 0, 0, 0),
            ),),
          onTap: (() {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Aboutus()),);
          }),
        ),
        ListTile(
          leading: const Icon(Icons.question_mark_rounded, color: Colors.black,),
          title: const Text('FAQs', 
          style:TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 0, 0, 0),
            ),),
          onTap: (() {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Faqs()),);
          }),
        ),
      ],
    ),
  );
}