// this is a remote data source to fetch data from outside the app
// api, firebase, database etc...
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/functions/save_books.dart';

abstract class HomeRemoteDataSource {
  // here we put what will hapen to the remote data source.  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks();
  // the class is noly responsive to fetch the data,will not handle the expention
  // as home repo which will handle the expetions.
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewsestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeatureBooks({int pageNumber = 0}) async {
    var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}');

    List<BookEntity> books = getBooksList(data);
    saveBoxData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsestBooks() async {
    var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');

    List<BookEntity> books = getBooksList(data);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
