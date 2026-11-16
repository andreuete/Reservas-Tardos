import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo, descripcion }

class TextoAppBlanco extends StatelessWidget {
  final String texto;
  final TipoTexto tipo;

  const TextoAppBlanco({
    super.key,
    required this.texto,
    this.tipo = TipoTexto.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    final estilo = switch (tipo) {
      TipoTexto.titulo => const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      TipoTexto.subtitulo => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      TipoTexto.cuerpo => const TextStyle(fontSize: 16, color: Colors.white),
      TipoTexto.descripcion => const TextStyle(
        fontSize: 13,
        color: Color.fromARGB(255, 211, 209, 209), //grisito claro
      ),
    };

    return Text(texto, style: estilo);
  }
}
