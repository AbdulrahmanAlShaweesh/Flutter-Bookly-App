import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_featured_book_use_case.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_news_book_use_case.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/fetch_featured_book_cubit.dart';
import 'package:meta/meta.dart';

part 'fetch_newest_book_state.dart';

class FetchNewestBookCubit extends Cubit<FetchNewestBookState> {
  FetchNewestBookCubit(this.fetchNewsBookUseCase) : super(FetchNewestBookInitial());

  final  FetchNewsBookUseCase fetchNewsBookUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FetchNewestBookLoading());

    var result = await fetchNewsBookUseCase.call();

    result.fold((faluire) {
      emit(
        FetchNewestBookFaliure(faluire.message),
      );
    }, (books) {
      emit(FetchNewestBookSucess(books));
    });
  }
}
