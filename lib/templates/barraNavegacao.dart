
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';

class BarraNavegacao extends StatelessWidget implements PreferredSizeWidget {
  const BarraNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("IFMap"),

      titleTextStyle: TextStyles.h1, // ligando ao style do arquivo text_style
      toolbarHeight: 92,
      backgroundColor: AppColors.navBar,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(92);

}