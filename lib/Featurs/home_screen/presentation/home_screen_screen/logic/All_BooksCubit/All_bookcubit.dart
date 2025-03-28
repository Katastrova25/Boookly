import 'package:bookly2/Featurs/home_screen/data/repository/home_repo.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookstat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBookCubit extends Cubit<AllBookState> {
  HomeRepo homeRepo;

  AllBookCubit(this.homeRepo) : super(AllBookInitial());

  getAllBooks() async {
    emit(AllBookLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure)  {
      emit(AllBookFailure(failure));
    }, (books) {
      emit(AllBookSuccess(books));
    });
  }
}
