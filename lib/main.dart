import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _pontuacaoTotal = 0;
  var _perguntaSelecionada = 0;
  //final List<Map<String, Object>> perguntas = [
  final _perguntas = const [
    {
    'texto': 'Quem reclama mais?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    },
    {
    'texto': 'Quem é mais engraçado?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    },
    {
    'texto': 'Quem fala demais?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    },
    {
    'texto': 'Quem fala de menos?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    },
    {
    'texto': 'Quem gosta de bagunçar?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    },
    {
    'texto': 'Quem dorme demais?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    },
    {
    'texto': 'Quem come demais?',
      'respostas': [
        {'texto': 'Pai', 'pontuacao': 6},
        {'texto': 'Mae', 'pontuacao': 5},
        {'texto': 'Irmão', 'pontuacao': 4},
        {'texto': 'Irmã', 'pontuacao': 4},
        {'texto': 'Avó', 'pontuacao': 3},
        {'texto': 'Filho', 'pontuacao': 2},
        {'texto': 'Eu', 'pontuacao': 1},
      ],
    }
  ];

  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
        ?  Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada,
          quandoResponder: _responder,
          )
        : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}