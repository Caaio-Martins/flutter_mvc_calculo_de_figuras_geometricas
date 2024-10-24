import 'package:flutter/material.dart';
import '../controllers/hexagono_controller.dart';
import '../views/resultado_hexagono.dart';

class EntradaHexagonoPage extends StatelessWidget {
  EntradaHexagonoPage({super.key});

  final HexagonoController hexagonoController = HexagonoController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo do Hexágono'),
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
                controller: ladoController,
                decoration: const InputDecoration(
                  labelText: "Lado:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor da altura",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24.0), // Espaçamento antes do botão

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
                  double lado = double.parse(ladoController.text);
                  hexagonoController.setDimensoes(lado);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultadoHexagonoPage(hexagonoController)),
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
