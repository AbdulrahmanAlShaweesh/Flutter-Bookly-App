// this is a remote data source to fetch data from outside the app
// api, firebase, database etc...

import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  // here we put what will hapen to the remote data source.  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks();
  // the class is noly responsive to fetch the data,will not handle the expention
  // as home repo which will handle the expetions.
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewsestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeatureBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewsestBooks() {
    throw UnimplementedError();
  }
}
