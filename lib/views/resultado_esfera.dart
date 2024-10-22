import 'package:flutter/material.dart';
import '../controllers/esfera_controller.dart';

class ResultadoEsferaPage extends StatelessWidget {
  final EsferaController esferaController;

  const ResultadoEsferaPage(this.esferaController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados: Esfera')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Raio: ${esferaController.esfera?.raio}"),
            Text("Área da Superfície: ${esferaController.getAreaSuperficie()}"),
            Text("Volume: ${esferaController.getVolume()}"),
          ],
        ),
      ),
    );
  }
}
