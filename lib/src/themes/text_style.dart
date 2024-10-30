import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 60,
    fontFamily: 'SofiaSans',
    fontWeight: FontWeight.w800,
    color: AppColors.title,
  );
  static const TextStyle h1Low = TextStyle(
    fontSize: 42,
    fontFamily: 'SofiaSans',
    fontWeight: FontWeight.w800,
    color: AppColors.title,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 48,
    fontFamily: 'SofiaSans',
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle listagem = TextStyle(
    fontSize: 15,
    fontFamily: 'SofiaSans',
    fontWeight: FontWeight.w700,
    color: AppColors.textSimple
  );

  static const TextStyle tituloSetor = TextStyle(
    fontSize: 36,
    fontFamily: 'SofiaSans',
    fontWeight: FontWeight.w800,
    color: Colors.black
  );

  static const TextStyle listagemSetor = TextStyle(
      fontSize: 21,
      fontFamily: 'SofiaSans',
      fontWeight: FontWeight.w700,
      color: Colors.black
  );

  static const TextStyle button = TextStyle(
    fontSize: 24,
    fontFamily: 'SofiaSans',
    color: AppColors.textSimple
  );
}