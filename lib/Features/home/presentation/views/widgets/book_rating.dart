import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 14,
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
