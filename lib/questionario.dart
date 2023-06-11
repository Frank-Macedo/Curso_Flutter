import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';

class QuestionarioWidget extends StatelessWidget {

  final int questao;
  final List<Map<String,Object>> perguntas;
  final void Function() responder;
  const QuestionarioWidget(this.questao,this.perguntas, this.responder, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Questao(perguntas[questao]['texto'].toString()),
        ...perguntas[questao].cast()['respostas']
        .map((t) => RespostaWidget(t, responder))
        .toList(),
      ],
    );
}

}
