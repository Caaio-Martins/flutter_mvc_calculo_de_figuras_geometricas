import 'package:flutter/material.dart';
import '../controllers/paralelogramo_controller.dart';

class ResultadoParalelogramoPage extends StatelessWidget {
  final ParalelogramoController paralelogramoController;

  const ResultadoParalelogramoPage(this.paralelogramoController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Paralelogramo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Altura: ${paralelogramoController.paralelogramo?.altura}"),
            Text("Base: ${paralelogramoController.paralelogramo?.base}"),
            Text("Área: ${paralelogramoController.getArea()}"),
            Text("Perímetro: ${paralelogramoController.getPerimetro()}"),
          ],
        ),
      ),
    );
  }
}
