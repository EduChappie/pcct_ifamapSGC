import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/src/components/item_lista.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';

class AdmPage extends StatelessWidget {
  const AdmPage({super.key});

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
                  const SizedBox(
                    height: 12,
                  ),
                  Listagem(
                      text: "Protocolo",
                      onPressed: () {
                        print("ir para protocolo!!");
                      }
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Listagem(
                      text: "Diretoria Geral",
                      onPressed: () {
                        print("ir para Diretoria Geral!!");
                      }
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}