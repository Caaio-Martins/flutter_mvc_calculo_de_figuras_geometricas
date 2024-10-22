import 'package:flutter/material.dart';
import '../controllers/retangulo_controller.dart';

class ResultadoRetanguloPage extends StatelessWidget {
  final RetanguloController retanguloController;

  const ResultadoRetanguloPage(this.retanguloController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Retângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Altura: ${retanguloController.retangulo?.altura}"),
            Text("Base: ${retanguloController.retangulo?.base}"),
            Text("Área: ${retanguloController.getArea()}"),
            Text("Perímetro: ${retanguloController.getPerimetro()}"),
          ],
        ),
      ),
    );
  }
}
