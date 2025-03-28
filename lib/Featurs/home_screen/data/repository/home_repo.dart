import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookModel>>> fetchNewsetBooks();

  Future<Either<String, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<String, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
