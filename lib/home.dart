import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';


class Home_base extends StatelessWidget {
  const Home_base({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BarraNavegacao(),

      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/mapa_cartoon.png'),
                fit: BoxFit.cover
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
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'SofiaSans',
                  color: Colors.black87,
                ),
            ),

            const SizedBox(
              height: 72,
            ),
            // Botão 1 -> agropecuaria
            SizedBox(
              width: 262,
              height: 60,
              child: ElevatedButton(
                  onPressed: () { print("agropecuaria"); },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(62, 62, 62, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )
                  ),
                  child: const Text(
                      'Agropecuária',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'SofiaSans'
                    ),
                  ),
              ),
            ),

            const SizedBox(
              height: 72,
            ),
            // Botão 2 -> pedagogico
            SizedBox(
              width: 262,
              height: 60,
              child: ElevatedButton(
                onPressed: () { print("Pedagogico"); },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(62, 62, 62, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )
                ),
                child: const Text(
                  'Pedagógico',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'SofiaSans'
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 72,
            ),
            // Botão 3 -> administrativo
            SizedBox(
              width: 262,
              height: 60,
              child: ElevatedButton(
                onPressed: () { print("administrativo"); },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(62, 62, 62, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )
                ),
                child: const Text(
                  'Administrativo',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SofiaSans',
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      //backgroundColor: const Color.fromRGBO(77, 77, 77, 1),
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