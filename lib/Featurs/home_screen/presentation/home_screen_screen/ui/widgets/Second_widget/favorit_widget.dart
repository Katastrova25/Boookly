import 'dart:core';

import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/star.dart';
import 'package:flutter/material.dart';

import 'container.dart';

class favorite_widget extends StatelessWidget {
   favorite_widget({
    super.key, required this.book,

  });
   final BookModel book;







@override
Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        height: 20,
      ),
      Center(
        child: Container(
          width: 162,
          height: 243,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("BookModel.volumeInfo.imageLinks.thumbnail"),
                fit: BoxFit.fill,
              )),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "BookModel.volumeInfo.title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
          ),
          Text(
            "BookModel.volumeInfo.authors",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          star(),
          SizedBox(
            height: 8,
          ),
          container(),
        ],
      ),
    ],
  );
}
}
