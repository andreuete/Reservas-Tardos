import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final Color? color;

  const Boton({super.key, required this.texto, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      style: FilledButton.styleFrom(backgroundColor: color),
      label: Text(texto, style: const TextStyle(fontSize: 18)),
    );
  }
}
