import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  // here we put what will hapen to the remote data source.  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks();
  // the class is noly responsive to fetch the data,will not handle the expention
  // as home repo which will handle the expetions.
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewsestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  
}