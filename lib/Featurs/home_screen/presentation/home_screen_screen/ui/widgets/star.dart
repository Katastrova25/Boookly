import 'package:flutter/material.dart';

class star extends StatelessWidget {
  const star({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 25,
        ),
        Text(
          '4.9',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
