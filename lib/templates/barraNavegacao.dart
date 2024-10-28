
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';

class BarraNavegacao extends StatefulWidget implements PreferredSizeWidget {

  String?  nome;
  BarraNavegacao({super.key, this.nome});


  @override
  Size get preferredSize => Size.fromHeight(92);

  @override
  BarraNavegacaoState createState() => BarraNavegacaoState();


}

class BarraNavegacaoState extends State<BarraNavegacao> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        '${ widget.nome==null ? "IFMap" : widget.nome  }'
      ),
      iconTheme: const IconThemeData(
        color: AppColors.textSimple,
      ),
      titleTextStyle: widget.nome==null?TextStyles.h1:TextStyles.h1Low, // ligando ao style do arquivo text_style
      toolbarHeight: 92,
      backgroundColor: AppColors.navBar,
    );
  }

}