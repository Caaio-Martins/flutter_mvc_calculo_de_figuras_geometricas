// ignore_for_file: avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'bemvindo_page.dart';

class Home extends StatelessWidget {
  //Widget Login (tecLogin) e Senha (tecSenha)
  final tecLogin = TextEditingController();
  final tecSenha = TextEditingController();

  //Definição de um usuário e senha padrão.
  final defLogin = "Caio";
  final defSenha = "12345";

  //Definição do nome e sobrenome do usuário que será enviado para a pagina de
  //bem-vindo.
  final String nomeEntrada = "Caio";
  final String sobrenomeEntrada = "Martins";

  //Construtor da Classe Login com atributo chave (key).
  Home({super.key});

  //Variável formKey para identificação do formulario no aplicativo (login_app).
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Função de validação do campo login
  String? validaLogin(String? value) {
    if (value == null || value.isEmpty) {
      return 'O campo de login não pode estar vazio';
    }
    if (value.length < 3) {
      return 'O login deve ter pelo menos 3 caracteres';
    }
    return null; // Retorna null se estiver válido
  }

  // Função de validação do campo senha
  String? validaSenha(String? value) {
    if (value == null || value.isEmpty) {
      return 'O campo de senha não pode estar vazio';
    }
    if (value.length < 5) {
      return 'A senha deve ter pelo menos 5 caracteres';
    }
    return null; // Retorna null se estiver válido
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: myBody(context),
      ),
    );
  }

    Widget myBody(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Spacer(), // Espaço antes do conteúdo
          textFormFieldLogin(),
          const SizedBox(height: 20), // Espaço entre os campos de login e senha
          textFormFieldSenha(),
          const SizedBox(height: 20), // Espaço entre os campos e o botão
          containerButtonEntrar(context),
          const Spacer(), // Espaço depois do conteúdo
        ],
      ),
    );
  }

  TextFormField textFormFieldLogin() {
    return TextFormField(
      controller: tecLogin,
      validator: validaLogin, // Referência para a função de validação de login
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
        labelText: "Usuário",
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
        hintText: "Informe o login",
      ),
    );
  }

  TextFormField textFormFieldSenha() {
    return TextFormField(
      controller: tecSenha,
      validator: validaSenha, // Referência para a função de validação de senha
      obscureText: true,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
        hintText: "Informe a senha",
      ),
    );
  }

  Container containerButtonEntrar(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          onClickLogin(context);
        },
        child: const Text(
          'Entrar',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }

  void onClickLogin(BuildContext context) {
    final String login = tecLogin.text;
    final String senha = tecSenha.text;

    print("Login: $login");
    print("Senha: $senha");

    if (!formKey.currentState!.validate()) {
      return;
    }

    // Comparação exata com o operador `==`
    if (login == defLogin && senha == defSenha) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              BemVindo(nome: nomeEntrada, sobrenome: sobrenomeEntrada),
        ),
      );

      print("Login efetuado com Sucesso!!!");
    } else {
      print("Falha no Login!!!");
      // Exibindo um alerta de falha no login
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erro'),
            content: const Text('Login ou senha incorretos. Tente novamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fechar o alerta
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
