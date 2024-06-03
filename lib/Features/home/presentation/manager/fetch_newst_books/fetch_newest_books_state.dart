part of 'fetch_newest_books_cubit.dart';

@immutable
sealed class FetchNewestBooksState {}

 
final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBookLoading extends FetchNewestBooksState {}

final class FetchNewestBookFaliure extends FetchNewestBooksState {
  final String errorMessages;

  FetchNewestBookFaliure(this.errorMessages);
}
final class FetchNewestBookSuccess extends FetchNewestBooksState {
  final List<BookEntity> books;

  FetchNewestBookSuccess(this.books);
}
