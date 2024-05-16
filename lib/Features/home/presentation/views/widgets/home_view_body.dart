import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/features_book_list.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10.0,
          ),
          FeatureBookListView(),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 40.0),
            child: Text(
              'Best Seller',
              style: Style.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
