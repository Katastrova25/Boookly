import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/Second_widget/favorit_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/Second_widget/listview.dart';
import 'widgets/Second_widget/second_appbar.dart';

class second_screen extends StatelessWidget {
  second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    BookModel book = ModalRoute.of(context)!.settings.arguments as BookModel;



    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const second_appbar(),
          favorite_widget(book: book),
           SizedBox(
            height: 70,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'you might also like',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const listview(),
        ],
      ),
    );
  }
}
