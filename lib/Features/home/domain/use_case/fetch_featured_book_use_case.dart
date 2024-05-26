import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/respo/home_repo.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  @override
  Future<Either<Faliure, List<BookEntity>>> call(NoParam? param) async {
    return await homeRepo.fetchFeatureBooks();
  }
}

// generic class: once we use the class,it will ask us to use tyle that will return once the
// data come
abstract class UseCase<Tyle, Param> {
  // passe optional parameter, or we can use any type
  Future<Either<Faliure, Tyle>> call(Param param);
}

// we use this class we do not need to use parameter.
class NoParam {}
