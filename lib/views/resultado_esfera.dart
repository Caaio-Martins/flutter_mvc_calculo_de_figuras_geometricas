import 'package:flutter/material.dart';
import '../controllers/esfera_controller.dart';

class ResultadoEsferaPage extends StatelessWidget {
  final EsferaController esferaController;

  const ResultadoEsferaPage(this.esferaController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados Finais'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Raio:\n',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${esferaController.esfera?.raio}',
                        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Área:\n',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${esferaController.getAreaSuperficie()}',
                        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Volume:\n',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${esferaController.getVolume()}',
                        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
