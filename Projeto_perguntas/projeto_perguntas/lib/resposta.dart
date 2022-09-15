// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() onSelecao;

  const Resposta({required this.text, required this.onSelecao()});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: onSelecao,
        child: Text(text),
      ),
    );
  }
}
