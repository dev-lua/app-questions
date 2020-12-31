import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao < 10) {
      return 'Quer ser humilde né!? Saquei hehehe';
    } else if(pontuacao < 20) {
      return 'Você poderia ser mais honesto tá? Tenta de novo!';
    } else if(pontuacao < 30) {
      return 'Impressionante sua cara de pau!';
    } else if(pontuacao < 40) {
      return 'Que coisa feia, julgando os outros! kkkkkkk';
    } else {
        return 'Deus tá vendo viu?';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar?',
          style: TextStyle(fontSize: 18),
        ),
        textColor: Colors.blue,
        onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}