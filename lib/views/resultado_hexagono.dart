import 'package:flutter/material.dart';
import '../controllers/hexagono_controller.dart';

class ResultadoHexagonoPage extends StatelessWidget {
  final HexagonoController hexagonoController;

  const ResultadoHexagonoPage(this.hexagonoController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Hexágono')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Lado: ${hexagonoController.hexagono?.lado}"),
            Text("Área: ${hexagonoController.getArea()}"),
            Text("Perímetro: ${hexagonoController.getPerimetro()}"),
          ],
        ),
      ),
    );
  }
}
