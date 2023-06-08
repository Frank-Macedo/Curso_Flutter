import 'package:flutter/material.dart';

class RespostaWidget extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;
  const RespostaWidget(this.resposta,this.quandoSelecionado,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(1) ,
      width: double.infinity,
      child: ElevatedButton(
        style:raisedButtonStyle,
        onPressed: quandoSelecionado, 
        child: Text(
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
          resposta,
        ),
      ),
    );  
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black,
  backgroundColor: Colors.blueGrey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
);