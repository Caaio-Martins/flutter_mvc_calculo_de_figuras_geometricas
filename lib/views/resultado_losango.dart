import 'package:flutter/material.dart';
import '../controllers/losango_controller.dart';

class ResultadoLosangoPage extends StatelessWidget {
  final LosangoController losangoController;
  final double lado;

  const ResultadoLosangoPage(this.losangoController, this.lado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Losango')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Diagonal Maior: ${losangoController.losango?.diagonalMaior}"),
            Text("Diagonal Menor: ${losangoController.losango?.diagonalMenor}"),
            Text("Área: ${losangoController.getArea()}"),
            Text("Perímetro: ${losangoController.getPerimetro(lado)}"),
          ],
        ),
      ),
    );
  }
}
