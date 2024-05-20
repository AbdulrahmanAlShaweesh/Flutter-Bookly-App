// ignore_for_file: sized_box_for_whitespace

import 'package:bookly_app/Features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}
