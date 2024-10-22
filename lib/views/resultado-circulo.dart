// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../controllers/circulo_controller.dart';

class ResultadoCirculoPage extends StatelessWidget {
  final CirculoController circuloController;

  const ResultadoCirculoPage(this.circuloController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Raio: ${circuloController.circulo?.raio}"),
            Text("Área do Círculo: ${circuloController.getArea()}"),
            Text("Perímetro do Círculo: ${circuloController.getPerimetro()}"),
          ],
        ),
      ),
    );
  }
}
