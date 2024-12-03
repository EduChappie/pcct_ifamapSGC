import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../src/themes/text_style.dart';
import '../templates/barraNavegacao.dart';

class Version extends StatelessWidget {
  const Version({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacao(nome: 'Versão',),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Versão 1.0 \n desenvolvedor: Eduardo \n lançado: 03/12/2024",
            style: TextStyles.listagemSetor,
          ),
        ),
      ),
    );
  }

}