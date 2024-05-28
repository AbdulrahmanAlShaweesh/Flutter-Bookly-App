import 'package:bookly_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/respo/home_repo.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation extends HomeRepo {
  // In this class we need to implement the two methods, through remote and local data sources
  // so, the two sources "local, remote" will be used here
  // the benifit of using artichture is to sprate the domain layer from data
  // so, with using his artichture, any change in the domain layer will not effect the data layer.
  // so, by using this class we will be able to connect between both local and remote data sources.
  final HomeRemoteDataSource homeremotedatasource;
  final HomeLocalDataSource homelocaldatasource;

  HomeRepoImplementation(
      {required this.homeremotedatasource, required this.homelocaldatasource});
  @override
  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks() async {
    try {
      List<BookEntity> books;
      books = homelocaldatasource.fetchFeatureBooks();
      if (books.isNotEmpty) {
        //return the data in the right side which is the books incase there is no error or issues
        return right(books);
      }
      books = await homeremotedatasource.fetchFeatureBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliure, List<BookEntity>>> fetchNewsestBooks() async {
    try {
      List<BookEntity> books;
      books = homelocaldatasource.fetchNewsestBooks();
      if (books.isNotEmpty) {
        //return the data in the right side which is the books incase there is no error or issues
        return right(books);
      }
      books = await homeremotedatasource.fetchNewsestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }
}
