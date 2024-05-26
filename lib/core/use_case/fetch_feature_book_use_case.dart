

import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

// generic class: once we use the class,it will ask us to use tyle that will return once the
// data come
abstract class UseCase<Tyle, Param> {
  // passe optional parameter, or we can use any type
  Future<Either<Faliure, Tyle>> call([Param param]);
}

// we use this class we do not need to use parameter.
class NoParam {}
