import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo, descripcion }

class TextoApp extends StatelessWidget {
  final String texto;
  final TipoTexto tipo;

  const TextoApp({
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
        color: Color.fromARGB(255, 18, 11, 11),
      ),
      TipoTexto.subtitulo => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      TipoTexto.cuerpo => const TextStyle(fontSize: 14),
      TipoTexto.descripcion => const TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 211, 209, 209),
      ),
    };

    return Text(texto, style: estilo);
  }
}
