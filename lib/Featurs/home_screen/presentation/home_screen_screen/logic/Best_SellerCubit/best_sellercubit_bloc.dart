import 'package:bookly2/Featurs/home_screen/data/repository/home_repo.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/Best_SellerCubit/best_sellercubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellercubit extends Cubit<BestSellerState> {
  HomeRepo homeRepo;

  BestSellercubit(this.homeRepo) : super((BestSellerInitial()));

  getBestSellers() async {
    emit(BestSellerLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(BestSellerError(failure));
    }, (books) {
      emit(BestSellerSuccess(books));
    });
  }
}
