import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';
import '../views/resultado_triangulo.dart';

class EntradaTrianguloPage extends StatelessWidget {
  EntradaTrianguloPage({super.key});

  final TrianguloController trianguloController = TrianguloController();
  final TextEditingController baseController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController lado1Controller = TextEditingController();
  final TextEditingController lado2Controller = TextEditingController();
  final TextEditingController lado3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Triângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lado1Controller,
              decoration: const InputDecoration(labelText: "Lado 1:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lado2Controller,
              decoration: const InputDecoration(labelText: "Lado 2:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lado3Controller,
              decoration: const InputDecoration(labelText: "Lado 3:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double base = double.parse(baseController.text);
                double altura = double.parse(alturaController.text);
                double lado1 = double.parse(lado1Controller.text);
                double lado2 = double.parse(lado2Controller.text);
                double lado3 = double.parse(lado3Controller.text);
                trianguloController.setDimensoes(base, altura);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoTrianguloPage(trianguloController, lado1, lado2, lado3),
                  ),
                );
              },
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}
