import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';

class ResultadoCuboPage extends StatelessWidget {
  final CuboController cuboController;

  const ResultadoCuboPage(this.cuboController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Cubo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Lado: ${cuboController.cubo?.lado}"),
            Text("Área: ${cuboController.getArea()}"),
            Text("Volume: ${cuboController.getVolume()}"),
          ],
        ),
      ),
    );
  }
}
