part of 'fetch_featured_book_cubit.dart';

@immutable
sealed class FetchFeaturedBookState {}

final class FetchFeaturedBookInitial extends FetchFeaturedBookState {}
final class FetchFeaturedBookLoading extends FetchFeaturedBookState {}
final class FetchFeaturedBookFaliure extends FetchFeaturedBookState {
  final String errorMessages;

  FetchFeaturedBookFaliure(this.errorMessages); 
}
final class FetchFeaturedBookSuccess extends FetchFeaturedBookState {
  final List<BookEntity> books;

  FetchFeaturedBookSuccess(this.books); 
}
