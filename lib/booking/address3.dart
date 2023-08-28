import 'dart:ffi';

import 'package:car_rental/booking/address2.dart';
import 'package:car_rental/booking/check_details.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/carSelect/selectcar.dart';
import 'package:email_validator/email_validator.dart';

import '../main.dart';
import '../nav_bar/aboutus.dart';
import '../nav_bar/contact.dart';
import '../nav_bar/faq.dart';
import '../trip.dart';

class Address3 extends StatefulWidget {
  
  String image='';
  String price='';
  String brand='';
  String luggage='';
  String min_fare='';
  int seats = 0;
  String selectedVal = '';
  String selectedVal1 = '';
  String selectedVal2 = '';
  String selectedVal3 = '';
  String selectedVal4 = '';
  String selectedVal5 = '';

  Address3({required this.price,
           required this.brand,
           required this.luggage,
           required this.image,
           required this.min_fare,
           required this.seats,});

  @override
  State<Address3> createState() => _AddressState(image: image, price: price, brand: brand, luggage: luggage, min_fare: min_fare, seats: seats);
}

class _AddressState extends State<Address3> {

/*number of people should not exceed seats on the car
identify the car and act accordinly tomorrows job*/



  String image='';
  String price='';
  String brand='';
  String luggage='';
  String min_fare='';
  int seats = 0;

  _AddressState({required this.price,
           required this.brand,
           required this.luggage,
           required this.image,
           required this.min_fare,
           required this.seats});


  TextEditingController _email = TextEditingController();

  TextEditingController _fname = TextEditingController();

  TextEditingController _mnumber = TextEditingController();

  TextEditingController _lname = TextEditingController();

  TextEditingController _npassenger = TextEditingController();

  TextEditingController _paddress = TextEditingController();

  TextEditingController _sinstruction = TextEditingController();

  String _iemail = '';
  String _ifname='';
  String _ilname='';
  String _imnumber='';
  String _inpassenger='';
  String _ipaddress='';
  String _isinstruction='';

  var passcount = 0;

  var _formkey = GlobalKey<FormState>();

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
      body: Form(  
        key: _formkey,
        child: Container(
          child: SingleChildScrollView(
            child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  //height: MediaQuery.of(context).size.height,//check for overflow error by changing sizes
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child:Text('Enter Booking Details',
                        style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Fasthand',
                        ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            controller: _email,
                            onChanged: (value) => setState(() => _iemail = value),
                            onFieldSubmitted: (value) => setState(() {
                              _iemail = value;
                            }),
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            //showCursor: false,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.email_outlined,
                              color: Colors.black,
                              ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                            enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),),
                            focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            ),
                            ),
                            validator: (value){
                              if(value != null && !EmailValidator.validate(value)){
                                return 'Invalid Email';
                              }
                              return null;
                            },
                            toolbarOptions: ToolbarOptions(
                              copy: true,
                              cut: true,
                              selectAll: true,
                              paste: true,
                            ),
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                            onTap: (){
                            },
                          )
                        ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: _fname,
                          onChanged: (value) => setState(() => _ifname = value),
                            onFieldSubmitted: (value) => setState(() {
                              _ifname = value;
                            }),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person_outline_sharp,
                            color: Colors.black,
                            ),
                          labelText: "First Name",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                          ),
                          validator: (value){
                              if(value != null){
                                if(value.length < 1){
                                return 'First Name must be filled';
                                }
                              }
                              else{
                                return null;
                              }
                              return null;
                            },
                          toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true,
                          ),
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                          onTap: (){
                          },
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: _lname,
                          onChanged: (value) => setState(() => _ilname = value),
                            onFieldSubmitted: (value) => setState(() {
                              _ilname = value;
                            }),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person_outline_sharp,
                            color: Colors.black,
                            ),
                          labelText: "Last Name",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                          ),
                          validator: (value){
                              if(value != null){
                                if(value.length < 1){
                                return 'Last Name must be filled';
                                }
                              }
                              else{
                                return null;
                              }
                              return null;
                            },
                          toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true,
                          ),
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                          onTap: (){
                          },
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: _mnumber,
                          onChanged: (value) => setState(() => _imnumber = value),
                            onFieldSubmitted: (value) => setState(() {
                              _imnumber = value;
                            }),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.phone,
                            color: Colors.black,
                            ),
                          prefixText: '+91',
                          labelText: "Mobile Number",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                          ),
                          validator: (value){
                              if(value != null){
                                if(value.length < 10){
                                return 'Invalid Mobile Number';
                                }
                                if(value.length > 10){
                                  return 'Invalid Mobile Number';
                                }
                              }
                              else{
                                return null;
                              }
                            },
                            toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true,
                          ),
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                          onTap: (){
                          },
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: _npassenger,
                          onChanged: (value) => setState(() => _inpassenger = value),
                            onFieldSubmitted: (value) => setState(() {
                              _inpassenger = value;
                            }),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.people,
                            color: Colors.black,
                            ),
                          labelText: "No. of Passengers",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                          ),
                          validator: (value){
                              if(value != null){
                                if(value.length < 1){
                                  return 'Number of Passengers is needed';
                                }
                                if(value.length > 0){
                                  if(int.parse(value) < 1 ){
                                  return 'Minimum 1 passenger is needed';
                                  }
                                  if(int.parse(value) > 6){
                                  return 'Maximum capacity of car is 6';
                                  }
                                }
                                if(value.length > 0) {
                                  if(int.parse(value) > seats && seats == 4){
                                  return 'Select a bigger Car';
                                  }
                                }
                                else 
                                {
                                  return null;
                                }
                              }
                              else{
                                return null;
                              }
                            },
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                          onTap: (){
                          },
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: _paddress,
                          onChanged: (value) => setState(() => _ipaddress = value),
                            onFieldSubmitted: (value) => setState(() {
                              _ipaddress = value;
                            }),
                          //maxLines: 3,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.streetAddress,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.location_on_outlined,
                            color: Colors.black,
                            ),
                          labelText: "Land Mark/Pickup Address",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                          ),
                          validator: (value){
                              if(value != null){
                                if(value.length < 15){
                                return 'Enter a valid address';
                                }
                              }
                              else{
                                return null;
                              }
                            },
                          toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true,
                          ),
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                          onTap: (){
                          },
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          controller: _sinstruction,
                          onChanged: (value) => setState(() => _isinstruction = value),
                            onFieldSubmitted: (value) => setState(() {
                              _isinstruction = value;
                            }),
                          //maxLines: 3,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.integration_instructions_outlined,
                            color: Colors.black,
                            ),
                          labelText: "Special Instructions(if any)",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                          ),
          
                          toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true,
                          ),
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                          onTap: (){
                          },
                        )
                      ),
                      SizedBox(height: 15,),
                      Container(
                  child: ElevatedButton(onPressed: (){
                    final isValid = _formkey.currentState!.validate();
                    print(_iemail);
                    print(_ifname);
                    print(_ilname);
                    print(_imnumber);
                    print(price);
                    print(brand);
                    if(isValid == true){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Check_details(
                      brand: brand,
                      image: image,
                      price: price,
                      luggage: luggage,
                      min_fare: min_fare,
                      iemail : _iemail,
                      ifname: _ifname,
                      ilname: _ilname,
                      imnumber: _imnumber,
                      inpassenger: _inpassenger,
                      ipaddress: _ipaddress,
                      isinstruction: _isinstruction,
                      )));
                    }
                  }, 
                  child: Text('Booking Details'),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20.0),
                      backgroundColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        ),
                      )
                    ),
                    Container(
                  padding: EdgeInsets.all(10),
                ),
                    ],
                    ),
                  ),
          ),
          ),
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