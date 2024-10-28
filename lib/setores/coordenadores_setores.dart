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
            height: 250,
            child: ListView.builder(
              itemCount: widget.coor.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      '. ${widget.coor[index]}',
                      style: TextStyles.listagem,
                    ),
                  ),
                );
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                widget.des,
                style: TextStyles.listagem,
              ),
            ),
          )
        ],
      ),
    );
  }

}