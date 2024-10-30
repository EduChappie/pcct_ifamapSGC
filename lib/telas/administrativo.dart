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


// classe mutável
class AdmPage extends StatefulWidget {
  const AdmPage({super.key});

  @override
  AdmPageState createState() => AdmPageState();

}

// classe estática
class AdmPageState extends State<AdmPage> {
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
                "Administrativo",
                style: TextStyles.h2,
              ),

              Column(
                children: [
                  Listagem(
                      text: "Protocolo",
                      onPressed: () {
                        print("ir para protocolo!!");
                        movi(Dtbs.administrativo['protocolo']);
                      }
                  ),
                  Listagem(
                      text: "Gabinete",
                      onPressed: () {
                        print("ir para Gabinete!!");
                        movi(Dtbs.administrativo['gabinete']);
                      }
                  ),
                  Listagem(
                      text: "Ginásio",
                      onPressed: () {
                        print('ir para Ginásio');
                        movi(Dtbs.administrativo['ginasio']);
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