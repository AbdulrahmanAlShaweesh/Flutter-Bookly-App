// the respo class should be abstract class
// inside this class: we used to wirte what will happend in the app NOT how to will happn
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // any one user this method, requred to do two thing one at the right side and
  // other one at the left side : one if there was a problem will be at the left side
  // and other one if there is NO a proble and will be at the right side
  // if there no problem will return List of Book entities
  // but if there is a problem will return => i create a class for error in the core
  // and will return the error of there is a problem occur in this function

  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks();

  Future<Either<Faliure, List<BookEntity>>> fetchNewsestBooks();
}
