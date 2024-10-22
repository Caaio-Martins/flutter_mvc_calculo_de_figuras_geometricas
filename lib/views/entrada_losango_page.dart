import 'package:flutter/material.dart';
import '../controllers/losango_controller.dart';
import '../views/resultado_losango.dart';

class EntradaLosangoPage extends StatelessWidget {
  EntradaLosangoPage({super.key});

  final LosangoController losangoController = LosangoController();
  final TextEditingController diagonalMaiorController = TextEditingController();
  final TextEditingController diagonalMenorController = TextEditingController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Losango')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: diagonalMaiorController,
              decoration: const InputDecoration(labelText: "Diagonal Maior:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: diagonalMenorController,
              decoration: const InputDecoration(labelText: "Diagonal Menor:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double diagonalMaior = double.parse(diagonalMaiorController.text);
                double diagonalMenor = double.parse(diagonalMenorController.text);
                double lado = double.parse(ladoController.text);
                losangoController.setDimensoes(diagonalMaior, diagonalMenor);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoLosangoPage(losangoController, lado)),
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
