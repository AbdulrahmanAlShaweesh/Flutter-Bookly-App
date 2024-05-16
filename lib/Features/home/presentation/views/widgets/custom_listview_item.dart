import 'package:flutter/material.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(19.0),
          ),
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/test_images.jpeg'),
          ),
        ),
      ),
    );
  }
}
