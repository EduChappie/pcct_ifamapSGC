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

              Column(
                children: [
                  Listagem(
                      text: "Psicultura",
                      onPressed: () {
                        print("ir para psicultura!!");
                        movi(Dtbs.agropecuaria['psicultura']);
                      }
                  ),
                  Listagem(
                      text: "Suinocultura",
                      onPressed: () {
                        print("ir para INMET!!");
                        movi(Dtbs.agropecuaria['suinocultura']);
                      }
                  )
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