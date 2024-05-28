import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSource {
  // here we put what will hapen to the remote data source.  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks();
  // the class is noly responsive to fetch the data,will not handle the expention
  // as home repo which will handle the expetions.
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewsestBooks();
}

// we need to catch the data from hive... it is better to book entiey
class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeatureBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsestBooks() {
    var box = Hive.box<BookEntity>(kNewsBook);
    return box.values.toList();
  }
}
