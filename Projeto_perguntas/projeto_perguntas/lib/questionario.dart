import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int? perguntaSelecionada;
  final void Function(int) responder;

  const Questionario(
      {super.key,
      required this.perguntas,
      required this.responder,
      required this.perguntaSelecionada});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada! < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada!].cast()['respostas']
        : [];

    return Column(
      children: <Widget>[
        Questao(texto: perguntas[perguntaSelecionada!]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
            text: resp['texto'].toString(),
            onSelecao: () => responder(int.parse(resp['pontuacao'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
