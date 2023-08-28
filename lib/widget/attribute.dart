import 'package:flutter/material.dart';

class Attribute extends StatelessWidget {
  const Attribute({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,style: TextStyle(color: Colors.black),),
        Text(value, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}