
import 'package:car_rental/carSelect/selectcar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Local extends StatefulWidget {
  const Local({super.key});

  @override
  State<Local> createState(){
    return _LocalState();
  }
}

class _LocalState extends State<Local> {

 /* _LocalState(){
    _selectedVal = _pickup[0];
    final extra = [,"13","14","15","16","17","18","19","20","21","22","23"];
  }*/

  TextEditingController _date = TextEditingController();

  final _pickup = ["Select a Pickup point","New Delhi Station", "Delhi Airport", "India Gate", "Red Fort", "Lotus Temple"];
  String _selectedVal="Select a Pickup point";

  final _drop = ["Select a Drop-off point","New Delhi Station", "Delhi Airport", "India Gate", "Red Fort", "Lotus Temple"];
  String _selectedVal1="Select a Drop-off point";

  final _hour = ["Hours","1","2", "3", "4", "5", "6", "7", "8", "9", "10","11", "12","13","14","15","16","17","18","19","20","21","22","23"];
  String _selectedVal2="Hours";

  final _min = ["Min","00","15", "30", "45"];
  String _selectedVal3="Min";

//extra for less pages
  String _selectedVal4='';
  String _selectedVal5='';

  var _formkey = GlobalKey<FormState>();

  /*final _ampm = ["Select","AM", "PM"];
  String? _selectedVal4 = "Select";
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
              child: DropdownButtonFormField(
              value: _selectedVal,
              items: _pickup.map(
                (e) => DropdownMenuItem(child: Text(e), value: e),
                ).toList(),
              
              onChanged: (val){
                setState(() {
                  _selectedVal = val as String;
                }
                );
              },
              icon: const Icon(
                Icons.arrow_drop_down_outlined,
                color: Color.fromARGB(255, 247, 184, 38),
              ),
              dropdownColor: Colors.yellow[200],
              decoration: InputDecoration(
                labelText: "Pickup Point",
                labelStyle: TextStyle(color: Color.fromARGB(255, 247, 184, 38)),
                prefixIcon: Icon(
                  Icons.location_pin,
                  color: Color.fromARGB(255, 247, 184, 38),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              validator: (_selectedVal){
                if(_selectedVal != null){
                  if(_selectedVal == _pickup[0]){
                    return 'Please Select a Different Pickup Point';
                  }
                  }
                  else{
                    return null;
                  }
                  return null;
                  },
              ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: DropdownButtonFormField(
              value: _selectedVal1,
              items: _drop.map(
                (e) => DropdownMenuItem(child: Text(e), value: e),
                ).toList(),
              
              onChanged: (val1){
                setState(() {
                  _selectedVal1 = val1 as String;
                }
                );
              },
              icon: const Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.green,
              ),
              validator: (_selectedVal1){
                  if(_selectedVal1 == _drop[0]){
                    return 'Please Select a Different Drop-off Point';
                  }
                  return null;
                  },
              dropdownColor: Colors.green[200],
              decoration: InputDecoration(
                labelText: "Drop-off Point",
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.location_pin,
                  color: Colors.green),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  showCursor: false,
                  readOnly: true,
                  controller: _date,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month_outlined,
                    color: Colors.black,
                    ),
                    labelText: "Pickup Date",
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    ),
                    ),
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),
                    onTap: () async{
                      DateTime? pickddate =await showDatePicker(
                        context: context, 
                        firstDate: DateTime.now().subtract(Duration(days: 0)),
                        initialDate: DateTime.now(), 
                        //firstDate: DateTime(2015), 
                        lastDate: DateTime(2040),
                        builder:(context, child) => Theme(
                          data: ThemeData().copyWith(
                            colorScheme: ColorScheme.dark(
                              primary: Colors.green,
                              onPrimary: Colors.black,
                              surface: Colors.green,
                              onSurface: Colors.black,
                            ),
                            dialogBackgroundColor: Colors.white,
                          ),
                          child: child!),
                        );
              
                      if (pickddate != null){
                        String formattedDate = DateFormat.yMMMd('en_US').format(pickddate);
                        setState(() {
                          _date.text = formattedDate.toString();
                        }
                        );
                      }
                  },
                  /*validator: (a){
                  if(a == 1)
                  {
                    return 'Please Call The Reantal Service at 9903888298';
                  }
                  return null;
                  },*/
                  )
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 30),
                    child: SizedBox(
                      width: 150,
              child: DropdownButtonFormField(
              value: _selectedVal2,
              items: _hour.map(
                (e) => DropdownMenuItem(child: Text(e), value: e),
                ).toList(),
              
              onChanged: (val2){
                setState(() {
                    _selectedVal2 = val2 as String;
                }
                );
              },
              validator: (_selectedVal2){
                if(_selectedVal2 != null){
                  if(_selectedVal2 == _hour[0]){
                    return 'Invalid Input';
                  }
                  }
                  else{
                    return null;
                  }
                  return null;
                  },
              dropdownColor: Color.fromARGB(255, 255, 255, 255),
              decoration: InputDecoration(
                labelText: "Pickup-Time",
                labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                prefixIcon: Icon(
                    Icons.access_time,
                    color: Color.fromARGB(255, 0, 0, 0)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                ),
                ),
              ),
              ),
                  ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                child: SizedBox(
                  width: 100,
                child: DropdownButtonFormField(
                value: _selectedVal3,
                items: _min.map(
                  (e) => DropdownMenuItem(child: Text(e), value: e),
                  ).toList(),
                
                onChanged: (val3){
                  setState(() {
                    _selectedVal3 = val3 as String;
                  }
                  );
                },
                validator: (_selectedVal3){
                if(_selectedVal3 != null){
                  if(_selectedVal3 == _min[0]){
                    return 'Invalid Input';
                  }
                  }
                  else{
                    return null;
                  }
                  return null;
                  },
                dropdownColor: Color.fromARGB(255, 255, 255, 255),
                decoration: InputDecoration(
                  labelText: "",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  ),
                ),
                ),
              ),
              
              
              //AM - PM in case needed
              /*Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 30),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100,
                child: DropdownButtonFormField(
                value: _selectedVal4,
                items: _ampm.map(
                  (e) => DropdownMenuItem(child: Text(e), value: e),
                  ).toList(),
                
                onChanged: (val4){
                  setState(() {
                    _selectedVal4 = val4 as String;
                  }
                  );
                },
                dropdownColor: Color.fromARGB(255, 255, 255, 255),
                decoration: InputDecoration(
                  labelText: "",
                  //labelStyle: TextStyle(color: Colors.green),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  ),
                ),
                ),
              ),*/
              
              
              
                ], //children
              ),
              Container(
                child: ElevatedButton(onPressed: (){
                final isValid = _formkey.currentState!.validate();
                if(isValid == true){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Selectcar(
                  selectedVal1: _selectedVal1,
                  selectedVal: _selectedVal,
                  selectedVal2: _selectedVal2,
                  selectedVal3: _selectedVal3,
                  selectedVal4: _selectedVal4,
                  selectedVal5: _selectedVal5,
                ))
                );
                }
              }, 
                child: Text('Next Step'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20.0),
                    backgroundColor: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 55, vertical: 12),
              ),
            )
              ),
          ],//children
          ),
        ),
      ),
  );
  }
}