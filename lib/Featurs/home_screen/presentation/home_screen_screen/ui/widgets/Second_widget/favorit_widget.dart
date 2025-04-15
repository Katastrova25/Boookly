import 'dart:core';

import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/star.dart';
import 'package:flutter/material.dart';

import 'container.dart';

class favorite_widget extends StatelessWidget {
  const favorite_widget({
    super.key,
    required this.book,
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
                  image: AssetImage("book.volumeInfo.imageLinks!.thumbnail"),
                  fit: BoxFit.fill,
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${book.volumeInfo.title}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
            ),
            Text(
              "by ${book.volumeInfo.authors}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const star(),
            const SizedBox(
              height: 8,
            ),
            const container(),
          ],
        ),
      ],
    );
  }
}
