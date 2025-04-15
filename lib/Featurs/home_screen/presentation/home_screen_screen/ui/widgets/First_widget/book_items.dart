import 'dart:core';

import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class book_item extends StatelessWidget {
  const book_item({
    super.key,
    required this.index,required this.image, required this.books
  });

  final int index;
  final String? image;
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color(0xff120531),
      onTap: () {
        Navigator.pushNamed(context, "s2",arguments: books);
      },
      child: Container(
        margin: index == 0 ? const EdgeInsets.only(left: 30) : const EdgeInsets.all(5),
        width: index == 0 ? 174 : 143,
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
