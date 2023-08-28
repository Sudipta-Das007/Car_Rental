import 'package:car_rental/confirm.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../nav_bar/aboutus.dart';
import '../nav_bar/contact.dart';
import '../nav_bar/faq.dart';
import '../trip.dart';

class Check_details2 extends StatelessWidget {

  String image='';
  String price='';
  String brand='';
  String luggage='';
  String min_fare='';
  String iemail = '';
  String ifname='';
  String ilname='';
  String imnumber='';
  String inpassenger='';
  String ipaddress='';
  String isinstruction='';
  String selectedVal = '';
  String selectedVal1 = '';
  String selectedVal2 = '';
  String selectedVal3 = '';
  String selectedVal4 = '';
  String selectedVal5 = '';

  Check_details2({required this.price,
           required this.brand,
           required this.luggage,
           required this.image,
           required this.min_fare,
           required this.iemail,
           required this.ifname,
           required this.imnumber,
           required this.ilname,
           required this.inpassenger,
           required this.ipaddress,
           required this.isinstruction,
           });

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
        //color: Colors.amber[400],
        //padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
        color: Colors.amber[400],
        borderRadius: BorderRadius.circular(15)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                //padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child:Text('Booking Details',
                style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Fasthand',
                ),
               ),
              ),
              Container(
                //color: Colors.amber[400],
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Name: ${ifname} ${ilname}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Mobile Number: ${imnumber}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Email: ${iemail}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Pickup Point: New Delhi Station',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Drop-Off Point: Lotus Temple',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Pickup Date: Dec 25,2022',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Pickup Time: 12:45',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Return Pickup Date: Dec 26,2022',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Return Time: 15:45',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Number of Passenger: ${inpassenger}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Car Selected: ${brand}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Maximum luggage: ${luggage}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Special Instruction: ${isinstruction}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Pickup Address: ${ipaddress}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Minimum Fare: ${min_fare}',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text('Price afte 8km: ${price}/km',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  ),),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20,top: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.redAccent
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Confirm()));
                  },
                  child: Text('Confirm Booking',
                  style: TextStyle(
                  fontSize: 18,
                  ),
                  ) 
                  ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
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