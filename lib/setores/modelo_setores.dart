import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/setores/database.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';

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
  void initState() {
    pageCtrl = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacao(),
      body: Container(
        alignment: Alignment.center,

        child: Column(
          children: [
            Text(
              widget.setor['nome'],
              style: TextStyles.h2,
            ),

            Image(
                image: AssetImage(widget.setor['imgMap'])
            ),

            Expanded(
              child: PageView(
                controller: pageCtrl,
                children: [
                  Image(
                    image: AssetImage(widget.setor['imgCarrosel'][0]),
                  ),
                  Image(
                    image: AssetImage(widget.setor['imgCarrosel'][1]),
                  ),
                  Image(
                    image: AssetImage(widget.setor['imgCarrosel'][2]),
                  )

                ],
              ),
            )
        ]
        ),
      )
    );
  }

}