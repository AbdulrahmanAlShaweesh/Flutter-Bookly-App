import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:flutter/material.dart';

class BookViewDetialsBody extends StatelessWidget {
  const BookViewDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBooDetialsAppBar(),
        ],
      ),
    );
  }
}


