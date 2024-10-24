import 'package:flutter/material.dart';
import '../controllers/retangulo_controller.dart';

class ResultadoRetanguloPage extends StatelessWidget {
  final RetanguloController retanguloController;

  const ResultadoRetanguloPage(this.retanguloController, {super.key});

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
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Usando Container para garantir que o texto ocupe a largura necessária
              Container(
                alignment: Alignment.centerLeft, // Alinha o conteúdo à esquerda
                child: RichText(
                  text: TextSpan(
                    text: 'Altura:\n',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '${retanguloController.retangulo?.altura}',
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
                    text: 'Base:\n',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '${retanguloController.retangulo?.base}',
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
                        text: '${retanguloController.getArea()}',
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
                    text: 'Perímetro:\n',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '${retanguloController.getPerimetro()}',
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
