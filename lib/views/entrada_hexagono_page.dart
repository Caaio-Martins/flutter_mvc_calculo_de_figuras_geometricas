import 'package:flutter/material.dart';
import '../controllers/hexagono_controller.dart';
import '../views/resultado_hexagono.dart';

class EntradaHexagonoPage extends StatelessWidget {
  EntradaHexagonoPage({super.key});

  final HexagonoController hexagonoController = HexagonoController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Hexágono')),
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
                hexagonoController.setDimensoes(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoHexagonoPage(hexagonoController)),
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
