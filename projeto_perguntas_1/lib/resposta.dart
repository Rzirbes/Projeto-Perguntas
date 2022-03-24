import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;

  Resposta(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(resposta),
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
