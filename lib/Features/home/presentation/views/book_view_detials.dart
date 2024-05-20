import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookViewDetials extends StatelessWidget {
  const BookViewDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookViewDetialsBody(),
      ),
    );
  }
}
