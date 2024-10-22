// ignore_for_file: avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Layout do Aplicativo
      appBar: AppBar(
        title: const Text('LoginApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: myBody(context),
      ),
    );
  }

  //Criação de notificações no aplicativo Login_App
   /*void showLongToast(String message) {
     FlutterToast.showToast(
         msg: message,
         toastLength: Toast.LENGTH_LONG,
         gravity: ToastGravity.BOTTOM,
         timeInSecForIosWeb: 1,
         backgroundColor: Colors.blue,
         textColor: Colors.white,
         fontSize: 16.0);
   }*/

  //Construção do corpo do aplicativo loginapp.
  Widget myBody(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        children: <Widget>[
          textFormFieldLogin(),
          textFormFieldSenha(),
          containerButtonEntrar(context),
        ],
      ),
    );
  }

  //Widget TextFormField:
  //componente para a entrada do usuario.
  TextFormField textFormFieldLogin() {
    return TextFormField(
      controller: tecLogin,
      //validator: validaLogin,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
          labelText: "Login", //texto do Login que acompanha o textForm.
          labelStyle: TextStyle(fontSize: 30.0, color: Colors.black),
          hintText: "Informe o login" //texto de dica para o usuario.

          ),
    );
  }

  //Widget TextFormField:
  //componente para a entrada da senha.
  TextFormField textFormFieldSenha() {
    return TextFormField(
      controller: tecSenha,
      //validator: validaSenha,
      obscureText: true, //ocultar o campo senha.
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
          labelText: "Senha", //texto do Login que acompanha o textForm.
          labelStyle: TextStyle(fontSize: 30.0, color: Colors.black),
          hintText: "Informe a senha" //texto de dica para o usuario.
          ),
    );
  }

  //componente (Widget) Container containerButtonEntrar():
  //define um container com um botão para o formulario de Login
  Container containerButtonEntrar(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, //cor de fundo do botão
          foregroundColor: Colors.white, //cor do texto do botão
        ),
        onPressed: () {
          //Método onClickLogin que aciona o botão Entrar.
          onClickLogin(context);
        },
        child: const Text(
          'Entrar',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }

  //Método onClickLogin responsavel pelo controle do formulario Login acionado
  //botão Entrar.
  void onClickLogin(BuildContext context) {
    //Capturar os conteudos textuais dos Widgets tecLogin e tecSenha para suas
    //respectivas variaveis login e senha.
    final String login = tecLogin.text;
    final String senha = tecSenha.text;

    //Exibe no terminal (Debug Console) os valores de login e senha.
    print("Login: $login");
    print("Senha: $senha");

    //Testar a validade do estado corrente do formulario, atraves da sua chave formKey.
    if (!formKey.currentState!.validate()) {
      return;
    }

    //Testar se os campos login e senha correspondem de forma verdaadeira aos
    //seus campo definidos.
    if (login.contains(defLogin) && senha.contains(defSenha)) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                BemVindo(nome: nomeEntrada, sobrenome: sobrenomeEntrada),
          ));

      //Mensagem no DebugConsole (ao lado do Terminal).
      print("Login efetuado com Sucesso!!!");

      //Mostrar a notificação positiva ao usuario
      //showLongToast("Login efetuado com Sucesso!!!");
    }

    //Caso contrario, sejam falsos os dados de login e senha e/ou ambos sejam
    //vazios, informa ao usuario que o login e a senha são invalidos.
    else {
      //retorna para o contexto atual (a tela preincipal).
      Navigator.pop(context);

      //Mensagem no DebugConsole.
      print("Falha no Login!!!");

      //Mostra uma notificação negativa ao usuario.
      print("Falha no Login!!!");
    }
  }
}
