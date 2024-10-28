import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/setores/database.dart';
import 'package:ifmap_pcct/src/components/slide_img.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';

import '../src/themes/colors.dart';

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
  late PageController pageCtrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.screen,

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