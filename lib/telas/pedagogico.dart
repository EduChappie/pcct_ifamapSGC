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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 335,
                height: 500,
                alignment: Alignment.center,
                child: ListView.builder(
                    itemCount: Dtbs.pedagogico.length,
                    itemBuilder: (BuildContext context, int index) {
                      String k = Dtbs.pedagogico.keys.elementAt(index);

                      return Listagem(
                          text: Dtbs.pedagogico[k]['nome'],
                          onPressed: () {
                            print("ir para ${Dtbs.pedagogico[k]['nome']}");
                            movi(Dtbs.pedagogico[k]);
                          }
                      );
                    }
                ),
              ),
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