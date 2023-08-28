import 'package:car_rental/carSelect/car_information.dart';
import 'package:car_rental/carSelect/car_information2.dart';
import 'package:car_rental/carSelect/constants.dart';
import 'package:car_rental/main.dart';
import 'package:car_rental/model/cars.dart';
import 'package:flutter/material.dart';

class CarListItem2 extends StatelessWidget {
  const CarListItem2(this.index,{
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Car car = carList[index];
    return Container(
        margin: EdgeInsets.only(bottom: 20,),
        child: Stack(
          children: [
            CarInformation2(car: car),
            Positioned(
              right: 40,
              child: Image.asset(
                car.image,
                height: 85,
              )
            )
          ],
        ),
    );
  }
}
