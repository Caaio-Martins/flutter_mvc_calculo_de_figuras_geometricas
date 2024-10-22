import 'package:flutter/material.dart';
import '../controllers/trapezio_controller.dart';
import '../views/resultado_trapezio.dart';

class EntradaTrapezioPage extends StatelessWidget {
  EntradaTrapezioPage({super.key});

  final TrapezioController trapezioController = TrapezioController();
  final TextEditingController baseMaiorController = TextEditingController();
  final TextEditingController baseMenorController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController lado1Controller = TextEditingController();
  final TextEditingController lado2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Trapézio')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: baseMaiorController,
              decoration: const InputDecoration(labelText: "Base Maior:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: baseMenorController,
              decoration: const InputDecoration(labelText: "Base Menor:"),
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
            ElevatedButton(
              onPressed: () {
                double baseMaior = double.parse(baseMaiorController.text);
                double baseMenor = double.parse(baseMenorController.text);
                double altura = double.parse(alturaController.text);
                double lado1 = double.parse(lado1Controller.text);
                double lado2 = double.parse(lado2Controller.text);
                trapezioController.setDimensoes(baseMaior, baseMenor, altura);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoTrapezioPage(trapezioController, lado1, lado2),
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
