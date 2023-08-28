import 'package:car_rental/carSelect/car_information.dart';
import 'package:car_rental/carSelect/car_list_item.dart';
import 'package:car_rental/carSelect/constants.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../nav_bar/aboutus.dart';
import '../nav_bar/contact.dart';
import '../nav_bar/faq.dart';
import '../trip.dart';

String a="";
String b="";
String c="";
String d="";
String e="";
String f="";


class Selectcar extends StatelessWidget {
  String selectedVal = '';
  String selectedVal1 = '';
  String selectedVal2 = '';
  String selectedVal3 = '';
  String selectedVal4 = '';
  String selectedVal5 = '';

  Selectcar({required this.selectedVal,
             required this.selectedVal1,
             required this.selectedVal2,
             required this.selectedVal3,
             required this.selectedVal4,
             required this.selectedVal5,});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: newMethod(),
      drawer: const NavigationDrawer(),
      body:Container(
              child: ListView.builder(
                itemCount: carList.length,
                itemBuilder: ((context, index) => CarListItem(index)
              )
              ),
            ),
    );
  }

 AppBar newMethod() {
    return AppBar(
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
      backgroundColor: Colors.white,
      elevation: 0.0,
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

