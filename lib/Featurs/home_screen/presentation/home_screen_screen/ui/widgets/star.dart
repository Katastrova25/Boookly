 import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookcubit.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookstat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class star extends StatelessWidget {
  star({super.key,required this.book});

  BookModel book;



  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 25,
        ),
        Text(
          '${book.volumeInfo.averageRating}/5',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
