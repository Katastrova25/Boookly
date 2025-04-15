import 'package:flutter/material.dart';

class items extends StatelessWidget {
  const items({
    super.key, required this.image,

  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6),
      width: 70,
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image:  DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
