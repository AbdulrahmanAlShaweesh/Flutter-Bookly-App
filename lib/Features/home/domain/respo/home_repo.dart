// the respo class should be abstract class 
// inside this class: we used to wirte what will happend in the app NOT how to will happn
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  
   Future<List<BookEntity>> fetchFeatureBooks(); 

   Future<List<BookEntity>> fetchNewsestBooks();
 }