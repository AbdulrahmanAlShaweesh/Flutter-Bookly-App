import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_news_book_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.fetchNewsBookUseCase) : super(FetchNewestBooksInitial());

  final FetchNewsBookUseCase fetchNewsBookUseCase; 

  Future<void> fetchFeaturedBooks() async {
    emit(FetchNewestBookLoading());

    var result = await fetchNewsBookUseCase.call();

    result.fold((faluire) {
      emit(
        FetchNewestBookFaliure(faluire.message),
      );
    }, (books) {
      emit(FetchNewestBookSuccess(books));
    });
  }


}



  