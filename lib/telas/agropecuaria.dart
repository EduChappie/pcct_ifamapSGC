import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/src/components/item_lista.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../setores/database.dart';
import '../setores/modelo_setores.dart';

class AgroPage extends StatefulWidget {
  const AgroPage({super.key});


  @override
  AgroPageState createState() => AgroPageState();

}

class AgroPageState extends State<AgroPage> {
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
                "Agropecuária",
                style: TextStyles.h2,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 335,
                  height: 500,
                  alignment: Alignment.center,
                  child: ListView.builder(
                      itemCount: Dtbs.agropecuaria.length,
                      itemBuilder: (BuildContext context, int index) {
                        String k = Dtbs.agropecuaria.keys.elementAt(index);

                        return Listagem(
                            text: Dtbs.agropecuaria[k]['nome'],
                            onPressed: () {
                              print("ir para ${Dtbs.agropecuaria[k]['nome']}");
                              movi(Dtbs.agropecuaria[k]);
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