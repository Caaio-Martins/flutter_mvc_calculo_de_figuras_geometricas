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
      appBar: AppBar(
        title: const Text('Cálculo do Losango'),
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
                controller: diagonalMaiorController,
                decoration: const InputDecoration(
                  labelText: "Diagonal Maior:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor da diagonal maior",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: diagonalMenorController,
                decoration: const InputDecoration(
                  labelText: "Diagonal Menor:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor da diagonal menor",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: ladoController,
                decoration: const InputDecoration(
                  labelText: "Lado:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor do lado",
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
                  double diagonalMaior =
                      double.parse(diagonalMaiorController.text);
                  double diagonalMenor =
                      double.parse(diagonalMenorController.text);
                  double lado = double.parse(ladoController.text);
                  losangoController.setDimensoes(diagonalMaior, diagonalMenor);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultadoLosangoPage(losangoController, lado)),
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
