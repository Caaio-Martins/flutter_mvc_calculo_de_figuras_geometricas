import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';
import '../views/resultado_cubo.dart';

class EntradaCuboPage extends StatelessWidget {
  EntradaCuboPage({super.key});

  final CuboController cuboController = CuboController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Cubo')),
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
                cuboController.setDimensoes(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoCuboPage(cuboController)),
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
