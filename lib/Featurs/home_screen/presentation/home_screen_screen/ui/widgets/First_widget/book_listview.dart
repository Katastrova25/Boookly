import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookcubit.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookstat.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/First_widget/book_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class book_listview extends StatelessWidget {
  const book_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBookCubit, AllBookState>(builder: (context, state) {
      if (state is AllBookSuccess) {
        return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return book_item(
                  index: index,
                  image: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                );
              },
              itemCount: state.books.length,
            ));
      } else if (state is AllBookFailure) {
        return Text("${state.errormessage}");
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
