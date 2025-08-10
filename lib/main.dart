// ignore_for_file: use_key_in_widget_constructors



import 'package:flutter/material.dart';
import 'package:teste/questionario.dart';
import 'Resultado.dart';

main(){
runApp(PerguntaApp());
}


class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      "texto":"Qual é a sua cor favorita?",
      "respostas":[
        {'texto':'Preto','pontuacao':10},
        {'texto':'vermelho','pontuacao':5},
        {'texto':'verde','pontuacao':3},
        {'texto':'branco','pontuacao':1}
      ],
     },

     {
      "texto":"Qual é o seu animal favorito?",
         "respostas":[
        {'texto':'coelho','pontuacao':10},
        {'texto':'cobra','pontuacao':5},
        {'texto':'elefante','pontuacao':3},
        {'texto':'leão','pontuacao':1}
      ],
    
     },

     {
      "texto":"Qual é o seu instrutor favorito?",
      "respostas":[
        {'texto':'Maria','pontuacao':10},
        {'texto':'João','pontuacao':5},
        {'texto':'Léo','pontuacao':3},
        {'texto':'Pedro','pontuacao':1}
      ]
     },

  ];


  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  void _reiniciar(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal =0;
    });
  }

  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
       });
    }
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada? 
        QuestionarioWidget(_perguntaSelecionada,_perguntas, _responder)
       : ResultadoWidget(_pontuacaoTotal, _reiniciar)
      ),
    );
  }
  
}


class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}