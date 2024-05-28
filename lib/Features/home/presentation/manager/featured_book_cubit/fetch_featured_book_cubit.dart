import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_featured_book_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_featured_book_state.dart';

class FetchFeaturedBookCubit extends Cubit<FetchFeaturedBookState> {
  FetchFeaturedBookCubit(this.featuredBooksUseCase)
      : super(FetchFeaturedBookInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBookLoading());

    var result = await featuredBooksUseCase.call();

    result.fold((faluire) {
      emit(
        FetchFeaturedBookFaliure(faluire.message),
      );
    }, (books) {
      emit(FetchFeaturedBookSuccess(books));
    });
  }
}
