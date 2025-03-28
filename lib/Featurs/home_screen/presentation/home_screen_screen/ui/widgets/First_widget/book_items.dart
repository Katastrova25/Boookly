import 'dart:core';

import 'package:flutter/material.dart';

class book_item extends StatelessWidget {
  const book_item({
    super.key,
    required this.index,required this.image
  });

  final int index;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color(0xff120531),
      onTap: () {
        Navigator.pushNamed(context, "s2");
      },
      child: Container(
        margin: index == 0 ? EdgeInsets.only(left: 30) : EdgeInsets.all(5),
        width: index == 0 ? 163 : 143,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
                "$image"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
