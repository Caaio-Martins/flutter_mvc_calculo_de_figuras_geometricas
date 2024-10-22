import 'package:flutter/material.dart';
import '../controllers/trapezio_controller.dart';

class ResultadoTrapezioPage extends StatelessWidget {
  final TrapezioController trapezioController;
  final double lado1;
  final double lado2;

  const ResultadoTrapezioPage(this.trapezioController, this.lado1, this.lado2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Trapézio')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Base Maior: ${trapezioController.trapezio?.baseMaior}"),
            Text("Base Menor: ${trapezioController.trapezio?.baseMenor}"),
            Text("Altura: ${trapezioController.trapezio?.altura}"),
            Text("Área: ${trapezioController.getArea()}"),
            Text("Perímetro: ${trapezioController.getPerimetro(lado1, lado2)}"),
          ],
        ),
      ),
    );
  }
}
