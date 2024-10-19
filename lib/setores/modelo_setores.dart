import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/setores/database.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraNavegacao(),
      body: Container(
        child: Text(widget.setor['nome']!),
      ),
    );
  }

}