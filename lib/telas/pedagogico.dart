import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';

import '../setores/database.dart';
import '../setores/modelo_setores.dart';
import '../src/components/item_lista.dart';
import '../src/themes/text_style.dart';


class EscolaPage extends StatefulWidget {
  const EscolaPage({super.key});

  @override
  EscolaPageState createState() => EscolaPageState();

}

class EscolaPageState extends State<EscolaPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BarraNavegacao(),

      backgroundColor: AppColors.screen,

      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Pedagógico",
              style: TextStyles.h2,
            ),

            Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Listagem(
                    text: "CGTI",
                    onPressed: () {
                      print("ir para CGTI!!");
                      movi(Dtbs.pedagogico['cgti']);
                    }
                ),
                const SizedBox(
                  height: 12,
                ),
                Listagem(
                    text: "DAE",
                    onPressed: () {
                      print("ir para DAE!!");
                    }
                ),
                const SizedBox(
                  height: 12,
                ),
                Listagem(
                    text: "NEABI",
                    onPressed: () {
                      print("ir para NEABI!!");
                    }
                ),
                const SizedBox(
                  height: 12,
                ),
                Listagem(
                    text: "Sala 1 - 12",
                    onPressed: () {
                      print("ver salas 1 a 12!!");
                    }
                ),
                const SizedBox(
                  height: 12,
                ),
                Listagem(
                    text: "Sala CVT 1 - 12",
                    onPressed: () {
                      print("ir para salas 1 a 12!!");
                    }
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  movi (Map m) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SetorPages(setor: m),
        )
    );
  }
}