import 'package:flutter/material.dart';
import '../controllers/paralelogramo_controller.dart';
import '../views/resultado_paralelogramo.dart';

class EntradaParalelogramoPage extends StatelessWidget {
  EntradaParalelogramoPage({super.key});

  final ParalelogramoController paralelogramoController =
      ParalelogramoController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController baseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo do Paralelogramo'),
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
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centraliza horizontalmente

            children: <Widget>[
              TextField(
                controller: alturaController,
                decoration: const InputDecoration(
                  labelText: "Altura:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor da altura",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: baseController,
                decoration: const InputDecoration(
                  labelText: "Base:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor da base",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20.0), // Espaçamento entre os campos

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
                  double altura = double.parse(alturaController.text);
                  double base = double.parse(baseController.text);
                  paralelogramoController.setDimensoes(altura, base);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadoParalelogramoPage(
                            paralelogramoController)),
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
