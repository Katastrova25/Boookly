import 'package:flutter/material.dart';

import '../star.dart';

class book_details extends StatelessWidget {
  const book_details({
    super.key,
    required this.title,
    required this.author,
    required this.image,
  });

  final String title;
  final String author;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "s2");
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              width: 70,
              height: 105,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('$image'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 105,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Text(
                  'The Book of the Prophets',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  '$author',
                  style: TextStyle(fontSize: 10),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "4.9",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      star(),
                    ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
