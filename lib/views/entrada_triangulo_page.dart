import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';
import '../views/resultado_triangulo.dart';

class EntradaTrianguloPage extends StatelessWidget {
  EntradaTrianguloPage({super.key});

  final TrianguloController trianguloController = TrianguloController();
  final TextEditingController baseController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController lado1Controller = TextEditingController();
  final TextEditingController lado2Controller = TextEditingController();
  final TextEditingController lado3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo do Triângulo'),
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
                controller: baseController,
                decoration: const InputDecoration(
                    labelText: "Base:",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Entre com o valor da base"),
                keyboardType: TextInputType.number,
              ),
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
                controller: lado1Controller,
                decoration: const InputDecoration(
                  labelText: "Lado 1:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor do lado 1",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: lado2Controller,
                decoration: const InputDecoration(
                  labelText: "Lado 2:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor do lado 2",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: lado3Controller,
                decoration: const InputDecoration(
                  labelText: "Lado 3:",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  hintText: "Entre com o valor o lado 3",
                ),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  double base = double.parse(baseController.text);
                  double altura = double.parse(alturaController.text);
                  double lado1 = double.parse(lado1Controller.text);
                  double lado2 = double.parse(lado2Controller.text);
                  double lado3 = double.parse(lado3Controller.text);
                  trianguloController.setDimensoes(base, altura);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultadoTrianguloPage(
                          trianguloController, lado1, lado2, lado3),
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
