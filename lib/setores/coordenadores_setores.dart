import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/themes/text_style.dart';

class Coordenadores extends StatefulWidget {
  List coor;
  String des;

  Coordenadores({super.key, required this.coor, required this.des});

  @override
  CoordenadoresState createState() => CoordenadoresState();

}

class CoordenadoresState extends State<Coordenadores> {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 21.0),
            child: Text(
              'Coordenador(es)',
              style: TextStyles.tituloSetor,
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: widget.coor.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      '. ${widget.coor[index]}',
                      style: TextStyles.listagemSetor,
                    ),
                  ),
                );
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 12.0, right: 12.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                widget.des,
                style: TextStyles.info,
              ),
            ),
          )
        ],
      ),
    );
  }

}