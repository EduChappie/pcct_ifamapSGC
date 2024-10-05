
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarraNavegacao extends StatelessWidget implements PreferredSizeWidget {
  const BarraNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("IFMap"),

      titleTextStyle: const TextStyle(
        fontSize: 60,

        fontFamily: 'SofiaSans',
        fontWeight: FontWeight.normal,
        color: Color.fromRGBO(1, 146, 63, 1),
      ),

      toolbarHeight: 92,
      backgroundColor: const Color.fromRGBO(60, 60, 60, 1),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(92);

}