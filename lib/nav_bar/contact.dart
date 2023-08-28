import 'package:car_rental/nav_bar/aboutus.dart';
import 'package:car_rental/trip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';
import 'faq.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

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
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('Contact Information',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('Feel free to contact me for any questions or if you need any help or services ! I provide competitive insight and market analysis no one can duplicate. Analysis reveals opportunities, supports decisions',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('Address:',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
              color: Colors.amber,
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('B202 Shopping Complex, Shivranjan Towers, Someshwar Wadi, Pashan, Pune- 411008',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('Email:',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
              color: Colors.amber,
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('consistent.cars@rediffmail.com',
            style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('Phone No.:',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
              color: Colors.amber,
              fontFamily: 'Cairo',
            ),),),
            Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child:Text('+91 86009 64138',
            style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'Cairo',
            ),),),
            Container(
                alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Text('Social Connect',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 36, 34, 34),
              fontFamily: 'Cairo',
            ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          alignment: Alignment.center,
                          icon: const Icon(
                              Icons.facebook, color: Colors.blue,
                              size: 40,
                              ),
                          onPressed: () {
                          },
                          );
                          },
                        ),
                      ),
                Container(
                  child: Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          alignment: Alignment.center,
                          icon: const Icon(
                              FontAwesomeIcons.twitter, color: Colors.blue,
                              size: 40,
                              ),
                          onPressed: () {
                          },
                          );
                          },
                        ),
                      ),
                Container(
                  child: Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          alignment: Alignment.center,
                          icon: const Icon(
                              FontAwesomeIcons.instagram, color: Colors.pink,
                              size: 40,
                              ),
                          onPressed: () {
                          },
                          );
                          },
                        ),
                      ),
              ],
            )
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