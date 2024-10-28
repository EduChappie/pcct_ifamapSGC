import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';
import 'package:page_transition/page_transition.dart';

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
      appBar: BarraNavegacao(),

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
                Listagem(
                    text: "CGTI",
                    onPressed: () {
                      print("ir para CGTI!!");
                      movi(Dtbs.pedagogico['cgti']);
                    }
                ),
                Listagem(
                    text: "DAE",
                    onPressed: () {
                      print("ir para DAE!!");
                      movi(Dtbs.pedagogico['dae']);
                    }
                ),
                Listagem(
                    text: "CEABI",
                    onPressed: () {
                      print("ir para CEABI!!");
                      movi(Dtbs.pedagogico['ceabi']);
                    }
                ),
                Listagem(
                    text: "Sala 1 - 7",
                    onPressed: () {
                      print("ver salas 1 a 7!!");
                      movi(Dtbs.pedagogico['salas']);
                    }
                ),
                Listagem(
                    text: "Sala CVT 1 - 15",
                    onPressed: () {
                      print("ir para salas 1 a 15!!");
                      movi(Dtbs.pedagogico['salasCVT']);
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
        PageTransition(
            child: SetorPages(setor: m),
            type: PageTransitionType.rightToLeft
        )
    );
  }
}