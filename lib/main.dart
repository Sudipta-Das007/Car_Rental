import 'package:flutter/material.dart';
import 'trip.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
        padding: EdgeInsets.fromLTRB(100, 0, 100, 15),
        child: Image(
          image: AssetImage('assets/logo.png'),),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(100, 0, 100, 10),
          child:Text('Want a Ride?',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 36, 34, 34),
            fontFamily: 'Cairo',
          ),),),
        Container(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Trip()));
          }, 
            child: Text('Book A Ride'),
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




