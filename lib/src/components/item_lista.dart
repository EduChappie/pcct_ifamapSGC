import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';

class Listagem extends StatelessWidget {
  final text;
  final onPressed;

  const Listagem({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 52,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.listagem,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                text,
                style: TextStyles.listagem,
            ),
          ],
        ),
      ),
    );
  }

}