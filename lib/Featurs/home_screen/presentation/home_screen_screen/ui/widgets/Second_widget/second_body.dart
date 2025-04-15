import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/Second_widget/second_appbar.dart';
import 'package:flutter/material.dart';

class second_body extends StatelessWidget {
  const second_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        second_appbar(),
      ],
    );
  }
}
