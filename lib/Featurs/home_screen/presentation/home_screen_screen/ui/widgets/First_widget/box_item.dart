import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/Best_SellerCubit/best_sellercubit_bloc.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/Best_SellerCubit/best_sellercubit_state.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/widgets/First_widget/book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class box_item extends StatelessWidget {
  const box_item({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellercubit, BestSellerState>(
        builder: (context, state) {
      if (state is BestSellerSuccess) {
        return
           ListView.builder(
              itemBuilder: (context, index) {
                return book_details(
                    title: state.books[index].volumeInfo!.title!,
                    author: state.books[index].volumeInfo!.authors![0],
                    image: state
                        .books[index].volumeInfo!.imageLinks!.thumbnail!);
              },
              itemCount: state.books.length);
      } else if (state is BestSellerError) {
        return (Text("${state.error}"));
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
