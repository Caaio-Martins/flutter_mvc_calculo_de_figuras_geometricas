import 'package:flutter/material.dart';
import '../controllers/quadrado_controller.dart';

class ResultadoQuadradoPage extends StatelessWidget {
  final QuadradoController quadradoController;

  const ResultadoQuadradoPage(this.quadradoController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Lado: ${quadradoController.quadrado?.lado}"),
            Text("Área do Quadrado: ${quadradoController.getArea()}"),
            Text("Perímetro do Quadrado: ${quadradoController.getPerimetro()}"),
          ],
        ),
      ),
    );
  }
}
