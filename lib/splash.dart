import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Navegar para a tela 'Home' após 5 segundos
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 80.0, horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/logo_cps.png', height: 100),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/logo_fatec.jpg', height: 100),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/logo_curso.png', height: 100),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Sistema \n Figuras Geométricas',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text(
                    'Loading...',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 35.0),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    strokeWidth: 6.0,
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment
                    .bottomCenter, // Alinhando os textos ao final da tela
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: 20.0), // Distância dos textos até o rodapé
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, // Ocupa o menor espaço possível no rodapé
                    children: [
                      Text(
                        'Caaio-Martins',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arial',
                        ),
                      ),
                      Text(
                        'FelipeDonizete',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arial',
                        ),
                      ),
                      Text(
                        'JoséVictor',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arial',
                        ),
                      ),
                      Text(
                        'Versão 1.0',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arial',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'home.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     //Faça a chamada ao metodo initState da Classe Superior.
//     super.initState();

//     Timer(const Duration(seconds: 10), () {
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const Home(),
//           ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 5.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Loading...', //Definir o texto para o Splash.
//                 style: TextStyle(
//                   //Definir um estilo para o teto da Splash.
//                   fontSize:
//                       22.0, //Fonte no tamanho: 22sp (aproximadamente 22px).
//                   fontWeight: FontWeight.bold, //Fonte no estilo negrito.
//                 ),
//               ),
//               SizedBox(
//                 height: 35.0,
//               ), //Definir uma caixa com espaçamento no tamanho de 35dp (aprox. 35px).
//               CircularProgressIndicator(
//                 //Widget (Componente circular que indica o progresso).
//                 //Executa animação circular infinita na cor Azul.
//                 valueColor: AlwaysStoppedAnimation(Colors.red),
//                 //Define a espessura do widget CircularProgressIndicator com 11dp (aprox. 11px).
//                 strokeWidth: 11.0,
//               ),
//               SizedBox(
//                 height: 60.0,
//               ),
//               Text(
//                 'Splash Screen',
//                 style: TextStyle(
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Arial'),
//               ),
//               Text(
//                 'versão 1',
//                 style: TextStyle(
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
