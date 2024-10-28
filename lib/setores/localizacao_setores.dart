import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';

import '../src/themes/colors.dart';

class Localizacao extends StatefulWidget {
  String cartoon;
  Localizacao({super.key, required this.cartoon});

  @override
  LocalizacaoState createState() => LocalizacaoState();
}

class LocalizacaoState extends State<Localizacao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 21.0),
            child: Text(
              "Localização",
              style: TextStyles.tituloSetor
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12),
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(widget.cartoon),
                  fit: BoxFit.fitWidth
                )
              ),
            ),
          )
        ],
      ),
    );
  }

}