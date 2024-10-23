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
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(  // Envolve todo o conteúdo em SafeArea
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo_cps.png', height: 100),
              const SizedBox(height: 20),
              Image.asset('assets/images/logo_fatec.jpg', height: 100),
              const SizedBox(height: 20),
              Image.asset('assets/images/logo_curso.png', height: 100),
              const SizedBox(height: 40),
              const Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 35.0),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.red),
                strokeWidth: 11.0,
              ),
              const SizedBox(height: 60.0),
              const Text(
                'Caaio-Martins',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial'),
              ),
              const Text(
                'FelipeDonizete',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial'),
              ),
              const Text(
                'JoséVictor',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial'),
              ),
            ],
          ),
        ),
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
