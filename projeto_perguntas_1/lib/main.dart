import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntasAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Branco', 'Verde']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro']
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Center(
                child: Text(
                  'Parabéns',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
