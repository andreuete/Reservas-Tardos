import 'package:flutter/material.dart';

class BotonGrande extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final Color? color;
  final double tamanoIcono;

  const BotonGrande({
    super.key,
    required this.texto,
    required this.icono,
    this.onPressed,
    this.color,
    this.tamanoIcono = 24,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      icon: Icon(icono, size: tamanoIcono),
      label: Text(
        texto,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
