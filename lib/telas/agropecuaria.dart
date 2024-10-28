import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/src/components/item_lista.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';

class AgroPage extends StatelessWidget {
  const AgroPage({super.key});

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
                    }
                ),
                Listagem(
                    text: "Instituto Nacional de Meterologia",
                    onPressed: () {
                      print("ir para INMET!!");
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