import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';

class ResultadoTrianguloPage extends StatelessWidget {
  final TrianguloController trianguloController;
  final double lado1;
  final double lado2;
  final double lado3;
  const ResultadoTrianguloPage(this.trianguloController, this.lado1, this.lado2, this.lado3, {super.key});

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
                    text: 'Base:\n',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${trianguloController.triangulo?.base}',
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
                    text: 'Altura:\n',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${trianguloController.triangulo?.altura}',
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
                        text: '${trianguloController.getArea()}',
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
                    text: 'Perímetro:\n',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${trianguloController.getPerimetro(lado1, lado2, lado3)}',
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
