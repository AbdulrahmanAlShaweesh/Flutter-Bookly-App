import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/Features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widget/search_result_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomSearchTextField(),
        ),
        SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Best Seller',
            style: Style.textStyel18,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
