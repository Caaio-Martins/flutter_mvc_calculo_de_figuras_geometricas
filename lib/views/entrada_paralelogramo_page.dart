import 'package:flutter/material.dart';
import '../controllers/paralelogramo_controller.dart';
import '../views/resultado_paralelogramo.dart';

class EntradaParalelogramoPage extends StatelessWidget {
  EntradaParalelogramoPage({super.key});

  final ParalelogramoController paralelogramoController = ParalelogramoController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController baseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Paralelogramo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double altura = double.parse(alturaController.text);
                double base = double.parse(baseController.text);
                paralelogramoController.setDimensoes(altura, base);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoParalelogramoPage(paralelogramoController)),
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
