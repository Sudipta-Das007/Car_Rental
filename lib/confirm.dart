import 'package:car_rental/main.dart';
import 'package:car_rental/nav_bar/aboutus.dart';
import 'package:car_rental/nav_bar/contact.dart';
import 'package:car_rental/nav_bar/faq.dart';
import 'package:flutter/material.dart';
import 'trip.dart';


class Confirm extends StatelessWidget {
  const Confirm({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(100, 175, 100, 10),
          child:Text('Thank You',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 36, 34, 34),
            fontFamily: 'Cairo',
          ),),),
          Container(
             alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(100, 0, 100, 10),
          child:Text('For Choosing',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 36, 34, 34),
            fontFamily: 'Cairo',
          ),),),
          Container(
             alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(100, 0, 100, 10),
          child:Text('Consistent Cars',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 36, 34, 34),
            fontFamily: 'Cairo',
          ),),),
        Container(
           alignment: Alignment.center,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Trip()));
          }, 
            child: Text('Book Another Ride'),
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20.0),
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 75, vertical: 18),
          ),
        )
      )
      ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
  );}
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