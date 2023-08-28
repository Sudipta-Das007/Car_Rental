import 'package:flutter/material.dart';

import '../main.dart';
import '../trip.dart';
import 'aboutus.dart';
import 'contact.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key});

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
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('FAQs',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('01. What is ConsistentCars.com?',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('www.conistentcars.com is an online car rental booking portal for local & outstation travels. What makes us unique is our concept of “Go One Way, Pay One Way” i.e. if you are traveling one way, you need to pay only for one-way travel and not for the return trip.',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('02. Why should I book a cab from ConsistentCars (CC)?',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('Because we are a technology-driven co., for us online doesn’t mean only booking and digital payment but all our services like fleet is GPS, IOT driven so high uptime and Zero breakdown, trusted driver with a proper background check and Police verification, work 24×7, in many Cities and offer a variety of Local & Outstation option for travelers.',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('03. What are the vehicle types available?',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('CC Comfort - Toyota Etios',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('CC Premium - Toyota Innova Crysta',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            ]),
      ),
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