import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';

class QuestionarioWidget extends StatelessWidget {

  final int questao;
  final List<String> respostas;
  final void Function() responder;
  const QuestionarioWidget(this.questao,this.respostas, this.responder, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Questao(respostas[questao]),
        ...respostas
        .map((t) => RespostaWidget(t, responder))
        .toList(),
      ],
    );
}

}
