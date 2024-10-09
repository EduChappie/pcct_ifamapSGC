import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/src/components/botao.dart';
import 'package:ifmap_pcct/src/themes/colors.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/telas/administrativo.dart';
import 'package:ifmap_pcct/telas/agropecuaria.dart';
import 'package:ifmap_pcct/telas/pedagogico.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';


class Home_base extends StatelessWidget {
  const Home_base({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BarraNavegacao(),

      backgroundColor: AppColors.screen,

      body: Container(
        // comando para por imagem no fundo, achei feio, remover depois
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/logos/logo_1.png'),
            )
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
                "Setores",
                style: TextStyles.h2 // importando estilo do text_style
            ),

            //os botões estão organizados da seguinte forma
            /*
            * size = espaço para cima
            * size = espaço para os lados
            *   button
            *
            * size = espaço para cima
            * size = espaço para os lados
            *   button
            *
            * size = espaço para cima
            * size = espaço para os lados
            *   button
            *
            * */

            const SizedBox(
              height: 72,
            ),
            // Botão 1 -> agropecuaria
            CustomButton(
                label: "Agropecuaria",
                onPressed: () {
                  print("para setor agropecuario");
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const AgroPage())
                  );
                }
            ),


            const SizedBox(
              height: 72,
            ),
            // Botão 2 -> pedagogico
            CustomButton(
                label: "Pedagógico",
                onPressed: () {
                  print("para setor pedagógico");
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EscolaPage())
                  );
                }
            ),


            const SizedBox(
              height: 72,
            ),
            // Botão 3 -> administrativo
            CustomButton(
              label: 'Administrativo',
              onPressed: () {
                print("para setor administrativo!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AdmPage())
                );
              },
            ),
          ],
        ),
      ),


    );
  }

}


/*
AppBar(
      toolbarHeight: 142,
      backgroundColor: Color(0xFF01923F),

      leadingWidth: 100,
      leading: IconButton(
        icon: Icon(Icons.menu),
        iconSize: 64,
        onPressed: () { print('trocar de tela para todos!!!'); },
      ),

      centerTitle: true,
      title: const Text(
        "ifMap",
        style: TextStyle(
            fontSize: 64,
            font

appBar: AppBar(
        centerTitle: true,
        title: const Text("IFMap"),

        titleTextStyle: const TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(1, 146, 63, 1),
        ),

        toolbarHeight: 92,
        backgroundColor: const Color.fromRGBO(60, 60, 60, 1),
      ),

      body: _children[_currentIndex],

      backgroundColor: const Color.fromRGBO(77, 77, 77, 1),
      );
*/