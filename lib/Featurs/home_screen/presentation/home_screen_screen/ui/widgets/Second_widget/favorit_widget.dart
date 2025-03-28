import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/star.dart';
import 'package:flutter/material.dart';

import 'container.dart';

class favorite_widget extends StatelessWidget {
  const favorite_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 162,
            height: 243,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                   image: AssetImage("images/illustration-17891-template-designing-artistic-islamic-covers-islamic-search_large.jpg"),
                  fit: BoxFit.fill,
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "The Jungle Book",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
            ),
            Text(
              "by Rudyard Kipling",
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
