import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';

class ResultadoTrianguloPage extends StatelessWidget {
  final TrianguloController trianguloController;
  final double lado1;
  final double lado2;
  final double lado3;

  const ResultadoTrianguloPage(this.trianguloController, this.lado1, this.lado2, this.lado3, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Triângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Base: ${trianguloController.triangulo?.base}"),
            Text("Altura: ${trianguloController.triangulo?.altura}"),
            Text("Área: ${trianguloController.getArea()}"),
            Text("Perímetro: ${trianguloController.getPerimetro(lado1, lado2, lado3)}"),
          ],
        ),
      ),
    );
  }
}
