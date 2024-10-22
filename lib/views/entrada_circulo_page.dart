import 'package:flutter/material.dart';
import '../controllers/circulo_controller.dart';
import '../views/resultado-circulo.dart';

class EntradaCirculoPage extends StatelessWidget {
  EntradaCirculoPage({super.key});

  final CirculoController circuloController = CirculoController();
  final TextEditingController raioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Círculo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: raioController,
              decoration: const InputDecoration(labelText: "Raio:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double raio = double.parse(raioController.text);
                circuloController.setDimensoes(raio);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoCirculoPage(circuloController)),
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
