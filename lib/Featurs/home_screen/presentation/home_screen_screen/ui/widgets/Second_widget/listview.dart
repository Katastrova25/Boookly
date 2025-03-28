import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/Second_widget/items.dart';
import 'package:flutter/material.dart';



class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return items();
        },
        itemCount: 10,
      ),
    );
  }
}
