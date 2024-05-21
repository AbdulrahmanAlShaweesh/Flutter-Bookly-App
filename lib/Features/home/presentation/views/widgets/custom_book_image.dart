import 'package:bookly_app/Features/home/presentation/views/widgets/book_detials_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/smilar_book_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetialsBody extends StatelessWidget {
  const BookViewDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomBooDetialsAppBar(),
              ),
              BookDetialsSection(),
              Expanded(
                child: SizedBox(
                  height: 30.0,
                ),
              ),
              SimilarBookSection(),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
