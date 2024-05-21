import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Text(
            'You can also like',
            style: Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SimilarBookListView(),
        ),
      ],
    );
  }
}
