import 'package:flutter/material.dart';

import 'widgets/Second_widget/favorit_widget.dart';
import 'widgets/Second_widget/listview.dart';
import 'widgets/Second_widget/second_appbar.dart';

class second_screen extends StatelessWidget {
  const second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          second_appbar(),
          favorite_widget(),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'you might also like',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          listview(),
        ],
      ),
    );
  }
}
