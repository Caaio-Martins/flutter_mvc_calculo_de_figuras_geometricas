import 'package:flutter/material.dart';
import '../controllers/trapezio_controller.dart';
import '../views/resultado_trapezio.dart';

class EntradaTrapezioPage extends StatelessWidget {
  EntradaTrapezioPage({super.key});

  final TrapezioController trapezioController = TrapezioController();
  final TextEditingController baseMaiorController = TextEditingController();
  final TextEditingController baseMenorController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController lado1Controller = TextEditingController();
  final TextEditingController lado2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo do Trapézio'),
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
                controller: baseMaiorController,
                decoration: const InputDecoration(
                    labelText: "Base Maior:",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Entre com o valor da base maior"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: baseMenorController,
                decoration: const InputDecoration(
                    labelText: "Base Menor:",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Entre com o valor da base menor"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: alturaController,
                decoration: const InputDecoration(
                    labelText: "Altura:",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Entre com o valor da altura"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: lado1Controller,
                decoration: const InputDecoration(
                    labelText: "Lado 1:",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Entre com o valor do lado 1"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: lado2Controller,
                decoration: const InputDecoration(
                    labelText: "Lado 2:",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Entre com o valor do lado 2"),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  double baseMaior = double.parse(baseMaiorController.text);
                  double baseMenor = double.parse(baseMenorController.text);
                  double altura = double.parse(alturaController.text);
                  double lado1 = double.parse(lado1Controller.text);
                  double lado2 = double.parse(lado2Controller.text);
                  trapezioController.setDimensoes(baseMaior, baseMenor, altura);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultadoTrapezioPage(
                          trapezioController, lado1, lado2),
                    ),
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
