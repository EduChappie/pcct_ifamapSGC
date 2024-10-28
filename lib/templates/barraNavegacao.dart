
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
  void initState() {
    /*
    super.initState();
    if (widget.name!.isEmpty) { // senão tiver nome, bota o nome normal
      print('ta vazio');
      widget.name = "IFMap";

    } else {
      print('não ta vazio');// se tiver nome, bota o nome que pediram
    }*/
  }

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
      titleTextStyle: TextStyles.h1, // ligando ao style do arquivo text_style
      toolbarHeight: 92,
      backgroundColor: AppColors.navBar,
    );
  }

}