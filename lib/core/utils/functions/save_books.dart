 import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

void saveBoxData(List<BookEntity> books, String boxName) {
    var box = Hive.box(boxName);
    box.addAll(books);
  }