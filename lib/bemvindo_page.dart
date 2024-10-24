// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'home.dart'; // Importar a página de login
import 'views/entrada_quadrado_page.dart';
import 'views/entrada_retangulo_page.dart';
import 'views/entrada_circulo_page.dart';
import 'views/entrada_paralelogramo_page.dart';
import 'views/entrada_losango_page.dart';
import 'views/entrada_trapezio_page.dart';
import 'views/entrada_esfera_page.dart';
import 'views/entrada_cubo_page.dart';
import 'views/entrada_hexagono_page.dart';
import 'views/entrada_triangulo_page.dart';

class BemVindo extends StatelessWidget {
  final String nome;
  final String sobrenome;

  const BemVindo({Key? key, required this.nome, required this.sobrenome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'Usuário: $nome $sobrenome',
    style: const TextStyle(fontSize: 16.0), // Definindo o tamanho da fonte aqui
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.exit_to_app),
      onPressed: () {
        // Ao clicar no botão de logout, redireciona para a página de login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
    ),
  ],
),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,  // Botões ocuparão toda a largura disponível
          children: <Widget>[
            // Título "Bem-vindo"
            const Center(
              child: Text(
                "Figuras Geométricas!",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30.0), // Espaçamento entre o título e os botões
            
            // Botões das figuras geométricas
            buttonForShape(context, "Retângulo", EntradaRetanguloPage()),
            buttonForShape(context, "Quadrado", EntradaQuadradoPage()),
            buttonForShape(context, "Círculo", EntradaCirculoPage()),
            buttonForShape(context, "Paralelogramo", EntradaParalelogramoPage()),
            buttonForShape(context, "Losango", EntradaLosangoPage()),
            buttonForShape(context, "Trapézio", EntradaTrapezioPage()),
            buttonForShape(context, "Esfera", EntradaEsferaPage()),
            buttonForShape(context, "Cubo", EntradaCuboPage()),
            buttonForShape(context, "Hexágono", EntradaHexagonoPage()),
            buttonForShape(context, "Triângulo", EntradaTrianguloPage()),
          ],
        ),
      ),
    );
  }

  // Função para criar botões para cada figura geométrica
  Widget buttonForShape(BuildContext context, String shapeName, Widget page) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0), // Espaçamento entre os botões
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15.0), // Tamanho do botão
          textStyle: const TextStyle(fontSize: 18.0), // Estilo do texto dos botões
          backgroundColor: Colors.blue, // Cor do botão definida como azul
          foregroundColor: Colors.white, // Cor da fonte definida como branca
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(shapeName),
      ),
    );
  }
}
