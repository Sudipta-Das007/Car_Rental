import 'package:car_rental/carSelect/car_information.dart';
import 'package:car_rental/carSelect/constants.dart';
import 'package:car_rental/main.dart';
import 'package:car_rental/model/cars.dart';
import 'package:flutter/material.dart';

class CarListItem extends StatelessWidget {
  const CarListItem(this.index,{
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
            CarInformation(car: car),
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
