import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';

abstract class AllBookState {}

class AllBookInitial extends AllBookState {}

class AllBookLoading extends AllBookState {}

class AllBookSuccess extends AllBookState {
  final List<BookModel> books;

  AllBookSuccess(this.books);
}

class AllBookFailure extends AllBookState {
  final String errormessage;

  AllBookFailure(this.errormessage);
}
