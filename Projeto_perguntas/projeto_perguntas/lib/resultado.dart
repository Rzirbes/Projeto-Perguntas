import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int? pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(
      {super.key, this.pontuacao, required this.reiniciarQuestionario});

  String? get fraseResultado {
    if (pontuacao! < 8) {
      return 'Parabéns';
    } else if (pontuacao! < 12) {
      return 'Você é Bom';
    } else if (pontuacao! < 16) {
      return 'Impressionante';
    }
    return 'Nivel Jedi';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado!,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: reiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
