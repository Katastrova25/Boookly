import 'package:flutter/material.dart';

class items extends StatelessWidget {
  const items({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      width: 70,
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(
              'https://th.bing.com/th/id/OIP.0eEQNsj8u1srnr7h500VyQHaLH?pid=ImgDet&w=198&h=297&c=7&dpr=2.3'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
