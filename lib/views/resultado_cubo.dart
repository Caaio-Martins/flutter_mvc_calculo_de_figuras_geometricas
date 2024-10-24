import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';

class ResultadoCuboPage extends StatelessWidget {
  final CuboController cuboController;

  const ResultadoCuboPage(this.cuboController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados Finais'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context); // Volta para a página anterior
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
            children: <Widget>[
              // Usando Container para garantir que o texto ocupe a largura necessária
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Lado:\n',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '${cuboController.cubo?.lado}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal, // Normal
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0), // Espaçamento
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Área:\n',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '${cuboController.getArea()}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal, // Normal
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0), // Espaçamento
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Volume:\n',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '${cuboController.getVolume()}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal, // Normal
                        ),
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
