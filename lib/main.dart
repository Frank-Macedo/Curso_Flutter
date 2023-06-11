// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/questionario.dart';
import 'package:teste/resposta.dart';
import './iconButton.dart';
import 'Resultado.dart';

main(){
runApp(PerguntaApp());
}


class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  final _perguntas = const [
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


  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada? _perguntas[_perguntaSelecionada].cast()['respostas']: [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada? 
        QuestionarioWidget(_perguntaSelecionada,respostas, _responder)
       : ResultadoWidget()
      ),
    );
  }
  
}


class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}