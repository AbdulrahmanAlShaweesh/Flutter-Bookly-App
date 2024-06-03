import 'package:bookly_app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_featured_book_use_case.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_news_book_use_case.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/fetch_featured_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_newst_books/fetch_newest_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/functions/setup_service_locater.dart';
import 'package:bookly_app/core/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  // create a single ton from home repo imp
  // create once and we can use it in bloc provider
  setUpServiceLocater();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewsBook);
  Bloc.observer = SimpleBlocObserver(); 
  
  runApp(const FlutterBooklyApp());
}

class FlutterBooklyApp extends StatelessWidget {
  const FlutterBooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // we use it for navigator from screen to other screen //
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FetchFeaturedBookCubit(
              FetchFeaturedBooksUseCase(
                gitit.get<HomeRepoImplementation>(),
              ),
            );
          },
        ),
        BlocProvider(create: (context) {
          return FetchNewestBooksCubit(
            FetchNewsBookUseCase(gitit.get<HomeRepoImplementation>()),
          );
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: kPColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
