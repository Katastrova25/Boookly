import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../star.dart';

class book_details extends StatelessWidget {
  const book_details({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "s2", arguments: {"book": bookModel});
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              width: 70,
              height: 105,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(bookModel
                          .volumeInfo.imageLinks!.thumbnail ??
                      'https://th.bing.com/th/id/OIP.0eEQNsj8u1srnr7h500VyQHaLH?pid=ImgDet&w=198&h=297&c=7&dpr=2.3'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 105,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${bookModel.volumeInfo.title}",
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                const Text(
                  'The Book of the Prophets',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "${bookModel.volumeInfo.authors}",
                  style: const TextStyle(fontSize: 10),
                ),
                const Row(
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
