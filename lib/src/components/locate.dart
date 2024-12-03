import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final latitude = 0.0.obs;
  final longitude = 0.0.obs;

  static Controller get to => Get.find<Controller>();

  Future<Position> _posicaoAtual() async {
    LocationPermission permissao;
    bool ativado = await Geolocator.isLocationServiceEnabled();

    if (!ativado) {
      return Future.error("Por favor, habilite a localização no smartphone.");
    }

    permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
      
      if (permissao == LocationPermission.denied) {
        return Future.error('Você precisa autorizar o acesso a localização')
      }
    }
  }
}
