import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookcubit.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookstat.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/Second_widget/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBookCubit, AllBookState>(builder: (context, state) {
      if (state is AllBookSuccess) {
        return SizedBox(
            height: 122,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return items(
                    image: state.books[index].volumeInfo.imageLinks!.thumbnail);
              },
              itemCount: state.books.length,
            ));
      } else if (state is AllBookFailure) {
        return Text(state.errormessage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
