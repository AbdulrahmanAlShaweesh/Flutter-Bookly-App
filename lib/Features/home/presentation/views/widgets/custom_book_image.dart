import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetialsBody extends StatelessWidget {
  const BookViewDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomBooDetialsAppBar(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .3),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 42,
              ),
              const Text(
                'The Jungle Book',
                style: Style.textStyle30,
              ),
              const SizedBox(
                height: 6.0,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Rudyard Kipling',
                  style: Style.textStyel18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: BookAction(),
              ),
              const Expanded(
                child: SizedBox(
                  height: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You can also like',
                    style:
                        Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: SimilarBookListView(),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
