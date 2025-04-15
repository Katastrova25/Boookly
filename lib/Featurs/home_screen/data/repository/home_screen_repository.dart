import 'package:bookly2/Featurs/home_screen/data/model/book_model/book_model.dart';
import 'package:bookly2/Featurs/home_screen/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../Core/Utills/Apiservice.dart';

class HomeScreenRepo implements HomeRepo {
  final ApiService apiService;

  HomeScreenRepo(this.apiService);

  @override
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var result = await apiService.getBooks(
          endpoint: "books/v1/volumes?Filtering=free-ebooks&q=20");
      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(e.toString());
      // TODO
    }

    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var result = await apiService.getBooks(
          endpoint:
              "books/v1/volumes?Filtering=free-ebooks&sorting=sorting&q=20");
      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(e.toString());
      // TODO
    }
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var result = await apiService.getBooks(
          endpoint:
              "books/v1/volumes?Filtering=free-ebooks&sorting=sorting&pXDzdJ_1E3oC=&q=20 ");
      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(e.toString());

      // TODO: implement fetchSimilarBooks
      throw UnimplementedError();
    }
  }
}
