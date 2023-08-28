import 'package:car_rental/booking/address.dart';
import 'package:car_rental/booking/address3.dart';
import 'package:car_rental/carSelect/constants.dart';
import 'package:car_rental/carSelect/selectcar.dart';
import 'package:flutter/material.dart';
import '../model/cars.dart';
import '../widget/attribute.dart';

int s = 0;

class CarInformation3 extends StatelessWidget {
  const CarInformation3({
    Key? key,
    required this.car,
  }) : super(key: key);


  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 24, right: 24),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.amber[400],
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('\₹${car.price}/km', style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),),

          Text('After 8 km', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          ),
          Text('Seats: ${car.seats}', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          ),
          SizedBox(height: 22,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attribute(
                value: car.brand, 
                name: 'Vehicle:'),
              Attribute(
                value: car.luggage, 
                name: 'Luggage:'),
              Attribute(
                value: car.min_fare, 
                name: 'Base Fare:'),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(43, 27),
                    backgroundColor: Colors.redAccent
                  ),
                  onPressed: (){

                    final String image=car.image;
                    final String price=car.price;
                    final String brand=car.brand;
                    final String luggage=car.luggage;
                    final String min_fare=car.min_fare;
                    final int seats=car.seats;

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Address3(
                      image: image,
                      price: price,
                      brand: brand,
                      luggage: luggage,
                      min_fare: min_fare,
                      seats: seats,
                       )));
                  },
                  child: Text('Book') 
                  ),
              )
            ],
          )

        ],
      ),
    );
  }
}
