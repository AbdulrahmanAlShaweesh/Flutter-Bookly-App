import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'fetch_featured_book_state.dart';

class FetchFeaturedBookCubit extends Cubit<FetchFeaturedBookState> {
  FetchFeaturedBookCubit() : super(FetchFeaturedBookInitial());
}
