import 'package:flutter/material.dart';

class BotonLogin extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final Color? color;

  const BotonLogin({
    super.key,
    required this.texto,
    required this.icono,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      style: FilledButton.styleFrom(backgroundColor: color),
      icon: Icon(icono),
      label: Text(texto, style: const TextStyle(fontSize: 32)),
    );
  }
}
