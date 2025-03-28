import 'package:flutter/material.dart';

import 'custmer_appbar.dart';

class home_body extends StatelessWidget {
  const home_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        appbar(),
      ],
    );
  }
}
