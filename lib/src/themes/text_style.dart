import 'package:flutter/cupertino.dart';

import 'colors.dart';

class TextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 60,
    fontFamily: 'SofiaSans',
    fontWeight: FontWeight.normal,
    color: AppColors.title,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 48,
    fontFamily: 'SofiaSans',
    color: AppColors.textSimple,
  );

  static const TextStyle button = TextStyle(
    fontSize: 24,
    fontFamily: 'SofiaSans',
    color: AppColors.textSimple
  );
}