import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../src/themes/text_style.dart';
import '../templates/barraNavegacao.dart';

class Quemsomos extends StatelessWidget {
  const Quemsomos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacao(nome: 'Nós',),

      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 38),
        child: Container(
          alignment: Alignment.topCenter,
          child: Text(
            "Somos alunps do 3º INFO(2024), estudantes e com anseio realizamos nosso projeto PCCT.\n \n  Integrantes:\n       -Adiña Matos\n       -Cisys da Silva\n       -Eduardo Fabrício",
            style: TextStyles.info,
          ),
        ),
      ),
    );
  }

}