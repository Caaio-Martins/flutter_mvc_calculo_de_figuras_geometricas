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
      appBar: AppBar(
        title: const Text('Cálculo do Círculo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context); // Volta para a página anterior
          },
        ),
      ),
      body: Center(
        // Centraliza todo o conteúdo
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centraliza verticalmente
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              TextField(
                controller: raioController,
                decoration: const InputDecoration(
                  labelText: "Raio:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor do raio",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15.0), // Tamanho do botão
                  textStyle: const TextStyle(
                      fontSize: 18.0), // Estilo do texto dos botões
                  backgroundColor:
                      Colors.blue, // Cor do botão definida como azul
                  foregroundColor:
                      Colors.white, // Cor da fonte definida como branca
                ),
                onPressed: () {
                  double raio = double.parse(raioController.text);
                  circuloController.setDimensoes(raio);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultadoCirculoPage(circuloController)),
                  );
                },
                child: const Text("Calcular"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
