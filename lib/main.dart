import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifmap_pcct/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //routes: <String, WidgetBuilder>{ rota para telas
        //'welcome' : (BuildContext context) => //new bemvindo(),
      //},
      /*
      Em seguida basta usar a linha abaixo para poder chamar a tela desejada.
      Navigator.pushNamed(context, '/homepage');
      */


      home: Home_base(),
    );
  }

}