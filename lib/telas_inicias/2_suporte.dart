import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../src/themes/text_style.dart';
import '../templates/barraNavegacao.dart';

class Suporte extends StatelessWidget  {
  const Suporte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacao(nome: 'Suporte',),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Contato Instituto: \n(xx)9xxxx-xxxx \n\n Contato Suporte: \n(xx)9xxxx-xxxx",
            style: TextStyles.listagemSetor,
          ),
        ),
      ),
    );
  }

}