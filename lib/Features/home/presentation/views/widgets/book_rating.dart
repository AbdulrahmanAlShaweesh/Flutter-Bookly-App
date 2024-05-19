import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Style.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5.0,
        ),
        const Text(
          '(2384)',
          style: Style.textStyle14,
        ),
        const SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}