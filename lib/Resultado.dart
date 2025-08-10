import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget {
  final int pontuacao;
  final Function() reiniciar;
  const ResultadoWidget(this.pontuacao, this.reiniciar, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return "Impressionante!";
    } else {
      return "Nível Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )),
        TextButton(
          onPressed: reiniciar, 
          child: Text("Reiniciar?", style: TextStyle(fontSize: 20, color: Colors.blueGrey),))
      ],
    );
  }
}
