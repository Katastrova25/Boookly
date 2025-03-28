import 'package:flutter/material.dart';

class second_appbar extends StatelessWidget {
  const second_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 53,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage('images/Logo.png')),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
