import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/respo/home_repo.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/use_case/fetch_feature_book_use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  @override
  Future<Either<Faliure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeatureBooks();
  }
}
 