import 'package:flutter/material.dart';
import '../controllers/quadrado_controller.dart';
import 'resultado_quadrado.dart';

class EntradaQuadradoPage extends StatelessWidget {
  EntradaQuadradoPage({super.key});

  final QuadradoController quadradoController = QuadradoController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Quadrado')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double lado = double.parse(ladoController.text);
                quadradoController.setDimensoes(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoQuadradoPage(quadradoController)),
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
