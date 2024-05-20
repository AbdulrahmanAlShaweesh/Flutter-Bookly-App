import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detials_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetialsBody extends StatelessWidget {
  const BookViewDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBooDetialsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .15),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
