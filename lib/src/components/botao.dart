import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';

import '../themes/text_style.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton({super.key,required this.label,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 72.0),
      child: SizedBox(
        width: 262,
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.button,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              ),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5)
            ),
            onPressed: onPressed,
            child: Text(
                label,
                style: TextStyles.button,
            ),
        ),
      ),
    );
  }

}