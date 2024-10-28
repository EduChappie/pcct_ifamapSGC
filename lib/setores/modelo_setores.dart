import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/setores/database.dart';
import 'package:ifmap_pcct/src/components/slide_img.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';

import '../src/themes/colors.dart';
import 'coordenadores_setores.dart';
import 'images_setores.dart';
import 'localizacao_setores.dart';

class SetorPages extends StatefulWidget {
  Map setor;

  SetorPages({
    super.key,
    required this.setor,
  });

  @override
  SetorPagesState createState() => SetorPagesState();
}

class SetorPagesState extends State<SetorPages> {
  int pgAtual = 0;
  late PageController pg;

  @override
  void initState() {
    super.initState();
    pg = PageController(initialPage: pgAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      pgAtual = pagina;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacao(nome: widget.setor['nome'],),

      backgroundColor: AppColors.backDark,
      body: PageView(
        controller: pg,
        onPageChanged: setPaginaAtual,
        children: [
          Imagens(url_images: widget.setor['imgCarrosel']),
          Localizacao(cartoon: widget.setor['imgMap']),
          Coordenadores(coor: widget.setor['coordenador'], des: widget.setor['decris']),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pgAtual,
        type: BottomNavigationBarType.fixed,
        items: const [ // lista de itens do bottom navigation
          BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'Imagens'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop),
              label: "Localização"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "Informações"
          )
        ],
        backgroundColor: AppColors.navBar,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (pagina) { // configuração de troca de página
          pg.animateToPage(
              pagina,
              duration: Duration(milliseconds: 200),
              curve: Curves.ease
          );
        },
      ),
    );
  }

}



/*
class SetorPagesState extends State<SetorPages> {
  late PageController pageCtrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.backDark,

      appBar: BarraNavegacao(),
      body: Container(
        alignment: Alignment.center,

        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  widget.setor['nome'],
                  style: TextStyles.h2,
                ),
          
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 32, left: 10, right: 10),
                  child: Container(
                    alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 2
                        ),
                        image: DecorationImage(
                          image: AssetImage(widget.setor['imgMap']),
                          fit: BoxFit.cover
                        )
                      ),
                      width: 800,
                      height: 200,
                    ),
                ),
                const Text(
                    '<- Imagens: ->',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),
                ),
                Container(
                  height: 300,
                  child: PageView(
                    children: [
                      SlideImg(
                          img: widget.setor['imgCarrosel'][0]
                      ),
                      SlideImg(
                          img: widget.setor['imgCarrosel'][1],
                      ),
                      SlideImg(
                          img: widget.setor['imgCarrosel'][2],
                      )
                    ],
                  ),
                ),

                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    )
                  ),
                  child: Text("Coordenador",
                    style: TextStyles.h2
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 16),
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    child: Text("Descrição",
                      style: TextStyles.h2,
                    ),
                  ),
                )
            ]
            ),
          ),
        ),
      )
    );
  }

}
*/