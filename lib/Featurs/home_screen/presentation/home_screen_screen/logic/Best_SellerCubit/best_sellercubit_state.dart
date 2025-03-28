import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';

abstract class BestSellerState {}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerSuccess extends BestSellerState {
  final List<BookModel> books;

  BestSellerSuccess(this.books);
}

class BestSellerError extends BestSellerState {
  final String error;

  BestSellerError(this.error);
}
