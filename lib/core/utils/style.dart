import 'package:flutter/material.dart';

abstract class Style {
  // we create  different style for different fontsize and we ignoure the
  // weight and family and we edit later if need it.
  static const textStyel18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: 'KGtSectraFine',
  );

  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: 'GT Sectra Fine',
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
