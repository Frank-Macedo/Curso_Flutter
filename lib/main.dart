// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';
import './iconButton.dart';

main(){
runApp(PerguntaApp());
}


class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
      if(_perguntaSelecionada > 2){
        _perguntaSelecionada =0;
      }

    });
  }
  @override
  Widget build(BuildContext context) {

    final List<Map<String, Object>> perguntas = [
      {
        "texto":"Qual é a sua cor favorita?",
        "respostas":['Preto','Vermelho','Verde','Branco'],
       },

       {
        "texto":"Qual é o seu animal favorito?",
        "respostas":["Coelho", 'Cobra', 'Eelefante', 'Leão'],
       },

       {
        "texto":"Qual é o seu instrutor favorito?",
        "respostas":["Maria", 'João', 'Leo', 'Pedro'],
       },

    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body:Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(" Flutter!!!"),
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            RespostaWidget("Resposta 1",_responder),
            RespostaWidget("Resposta 2",_responder),
            RespostaWidget("Resposta 3",_responder),
          ],
        )
        
      ),
    );
  }
  
}


class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}