
import 'package:car_rental/carSelect/selectcar.dart';
import 'package:car_rental/carSelect/selectcar3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Hourly extends StatefulWidget {
  const Hourly({super.key});

  @override
  State<Hourly> createState() => _HourlyState();
}

class _HourlyState extends State<Hourly> {
  
  TextEditingController _date = TextEditingController();
  
  final _pickup = ["Select a Pickup point","New Delhi Station", "Delhi Airport", "India Gate", "Red Fort", "Lotus Temple", "Others"];
  String _selectedVal="Select a Pickup point";

  final _package = ["Please Select","1 Day Package(24 hours)", "1 Hour", "2 Hours", "5 Hours", "200 Hours", "Others"];
  String _selectedVal1="Please Select";

  final _hour = ["Hours","1","2", "3", "4", "5", "6", "7", "8", "9", "10","11", "12"];
  String _selectedVal2="Hours";

  final _min = ["Min","00","15", "30", "45"];
  String _selectedVal3="Min";

  String package='';

  var _formkey = GlobalKey<FormState>();

  TextEditingController _otherpackage = TextEditingController();

  //extra for less pages
  String _selectedVal4='';
  String _selectedVal5='';

  /*final _ampm = ["Select","AM", "PM"];
  String? _selectedVal4 = "Select";
*/
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            padding: EdgeInsets.all(10),
            child: DropdownButtonFormField(
            value: _selectedVal1,
            items: _package.map(
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
                  if(_selectedVal1 == _package[0]){
                    return 'Please Select a Package';
                  }
                  return null;
                  },
            dropdownColor: Colors.green[200],
            decoration: InputDecoration(
              labelText: "Package",
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
            validator: (_selectedVal){
                  if(_selectedVal == _pickup[0]){
                    return 'Please Select a Different Pickup Point';
                  }
                  return null;
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
            ),
        ),
                   /* Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            controller: _otherpackage,
                            onChanged: (value) => setState(() => package = value),
                              onFieldSubmitted: (value) => setState(() {
                                package = value;
                              }),
                            //maxLines: 3,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.timelapse,
                              color: Colors.black,
                              ),
                            labelText: "Preffered Timespan",
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
                        ),*/
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
                  if(_selectedVal2 == _hour[0]){
                    return 'Please Select a Pickup Time';
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
              ],//children
            ),
            Container(
              child: ElevatedButton(onPressed: (){
                
            
              Navigator.push(context, MaterialPageRoute(builder: (context) => Selectcar3(
                selectedVal1: _selectedVal1,
                selectedVal: _selectedVal,
                selectedVal2: _selectedVal2,
                selectedVal3: _selectedVal3,
                selectedVal4: _selectedVal4,
                selectedVal5: _selectedVal5,
              )));
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
  );
  }
}