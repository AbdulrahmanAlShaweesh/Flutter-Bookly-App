part of 'fetch_newest_book_cubit.dart';

@immutable
sealed class FetchNewestBookState {}

final class FetchNewestBookInitial extends FetchNewestBookState {}

final class FetchNewestBookLoading extends FetchNewestBookState {}

final class FetchNewestBookFaliure extends FetchNewestBookState {
  final String errorMessage;

  FetchNewestBookFaliure(this.errorMessage);
}

final class FetchNewestBookSucess extends FetchNewestBookState {
  final List<BookEntity> books;

  FetchNewestBookSucess(this.books);
}
