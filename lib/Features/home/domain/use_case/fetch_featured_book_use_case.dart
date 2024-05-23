import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/respo/home_repo.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks(){
    return homeRepo.fetchFeatureBooks();
    
  }
}

