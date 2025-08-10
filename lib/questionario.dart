import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';

class QuestionarioWidget extends StatelessWidget {

  final int questao;
  final List<Map<String,Object>> perguntas;
  final void Function(int) responder;
   QuestionarioWidget(
    this.questao,
    this.perguntas, 
    this.responder, 
    {super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String,Object>> respostas =  perguntas[questao].cast()['respostas'];

    return  Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Questao(perguntas[questao]['texto'].toString()),
        ...respostas
        .map((resp) => RespostaWidget(resp['texto'].toString(),
         () => responder(int.parse( resp['pontuacao'].toString()))))
        .toList(),
      ],
    );
}

}
