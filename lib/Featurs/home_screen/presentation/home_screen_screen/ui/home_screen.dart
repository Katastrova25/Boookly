import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/First_widget/book_listview.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/First_widget/box_item.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/First_widget/home_body.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: home_body()),
        SliverToBoxAdapter(child: book_listview()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Best Sellers",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
            ),
          ),
        ),
        SliverToBoxAdapter(child: box_item()),
      ],
    ));
  }
}
